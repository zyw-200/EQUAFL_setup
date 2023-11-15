import idautils
import idc
import idaapi
import time
from collections import namedtuple
from miasm2.core.graph import DiGraph
from miasm2.ir.ir import AssignBlock, IRBlock
from miasm2.expression.expression import ExprLoc, ExprMem, ExprId, ExprInt
from miasm2.expression.simplifications import expr_simp
from miasm2.core.interval import interval
import copy
import re


def auto_depgraph(source_arg, addr_arg):
    global graphs, comments, sol_nb, settings, addr, ir_arch, ircfg, source
    # Get the current function
    addr = addr_arg
    source = source_arg
    func = ida_funcs.get_func(addr)

    # Init
    machine = guess_machine(addr=func.startEA)
    mn, dis_engine, ira = machine.mn, machine.dis_engine, machine.ira

    bs = bin_stream_ida()
    mdis = dis_engine(bs, dont_dis_nulstart_bloc=True)
    ir_arch = ira(mdis.loc_db)

    # Populate symbols with ida names
    for ad, name in idautils.Names():
        if name is None:
            continue
        mdis.loc_db.add_location(name, ad)

    asmcfg = mdis.dis_multiblock(func.startEA)

    # Generate IR
    ircfg = ir_arch.new_ircfg_from_asmcfg(asmcfg)

    # Get settings
########zyw
    targets = ["A0","A1","A2","A3"]
    dep_dict = {}
    dep_element = set()
    for target in targets:
        settings = depGraphSettings(ir_arch, ircfg, addr, target)
        loc_key, elements, line_nb = settings.loc_key, settings.elements, settings.line_nb
    ########

        # Simplify affectations
        for irb in ircfg.blocks.values():
            irs = []
            offset = ir_arch.loc_db.get_location_offset(irb.loc_key)
            fix_stack = offset is not None and settings.unalias_stack
            for assignblk in irb:
                if fix_stack:
                    stk_high = m2_expr.ExprInt(idc.GetSpd(assignblk.instr.offset), ir_arch.sp.size)
                    fix_dct = {ir_arch.sp: mn.regs.regs_init[ir_arch.sp] + stk_high}

                new_assignblk = {}
                for dst, src in assignblk.iteritems():
                    if fix_stack:
                        src = src.replace_expr(fix_dct)
                        if dst != ir_arch.sp:
                            dst = dst.replace_expr(fix_dct)
                    dst, src = expr_simp(dst), expr_simp(src)
                    new_assignblk[dst] = src
                    print dst, src
                irs.append(AssignBlock(new_assignblk, instr=assignblk.instr))
            ircfg.blocks[irb.loc_key] = IRBlock(irb.loc_key, irs)

        # Get dependency graphs
        dg = settings.depgraph
        graphs = dg.get(loc_key, elements, line_nb,
                        set([ir_arch.loc_db.get_offset_location(source)]))
        # Display the result
        comments = {}
        sol_nb = 0

        # Register and launch
        #ida_kernwin.add_hotkey("Shift-N", next_element)
        dep_dict[target] = output_results() #zyw
        #treat_element()
    for i in dep_dict:
        #print i, 
        #print_hex(dep_dict[i])
        for dep_addr in dep_dict[i]:
            if(if_same_block(source, dep_addr, ircfg)):
                dep_element.add(i)

    return dep_dict, dep_element

'''
def process(load_addr, reg_str):
	dst = GetOpnd(load_addr, 0)
	if cmp(dst, "$a1") == 0:
		jump_addr = key_load_addr + 4
	elif cmp(dst, "$a0") == 0:
		jump_addr = key_load_addr - 4
	else:
		taint_reg = dst
'''

def str_ref_addr(ea, code_seg_name):
	sg = SegByBase(SegByName(code_seg_name)) 
	ref_set = set()
	final_ref_set = set()
	for xref in XrefsTo(ea):
		ref_set.add(xref.frm)
	for ref in ref_set:
		tmp_addrs = [ref]
		while len(tmp_addrs):
			addr = tmp_addrs[0]
			del tmp_addrs[0]
			if addr not in range(SegStart(sg), SegEnd(sg)):
				#print "not in .text %x, %x" %(ea, addr)
				for r in XrefsTo(addr):
					tmp_addrs.append(r.frm)
			else:
				final_ref_set.add(addr)
	return final_ref_set

def search_strings(search_str, segname):
    addr_list = []
    assert(segname is not None)
    print segname
    sg = SegByBase(SegByName(segname)) 
    start_ea = SegStart(sg)
    end_ea = SegEnd(sg) 
    print("start:%x,end:%x" %(start_ea, end_ea))
    ea = FindText(start_ea, SEARCH_DOWN, 0, 0, search_str);
    while ea!=BADADDR:
        ins = idc.GetDisasm(ea)
        if ea in range(start_ea, end_ea):
            addr_list.append(ea)
        ea = NextHead(ea)
        print("go on:%x" %ea)
        ea = FindText(ea, SEARCH_DOWN, 0, 0, search_str);
    return addr_list




def search_undefined_func(start_str,segname):
    undef_func_ea = []
    print("start search")
    func_starts = search_strings(start_str, segname)
    print("end search")
    for func_ea in func_starts:
        name = GetFunctionName(func_ea)
        if len(name) == 0:
            undef_func_ea.append(func_ea)
    return undef_func_ea


def make_function(start_str, segname):
    func_list = search_undefined_func(start_str, segname)
    for func in func_list:
    	print("make func:%x" %func)
        idc.MakeFunction(func)

def check_conditional(func_ea, addr):
    # Get: function's base address, suspicious branch/jmp address
    # Returns: a strings which says whether the address is a Conditional Branch, Unconditional Branch or neither

    f_start = get_func(func_ea).startEA
    f_end = FindFuncEnd(f_start)

    # Get local function's references made from the instruction
    refs = CodeRefsFrom(addr, 0)
    refs = set(filter(lambda x: x>=f_start and x<=f_end, refs)) 
    if refs:
        # Add a reference to the next instruction if the flow continues to it
        next_head = NextHead(addr, f_end)
        if isFlow(GetFlags(next_head)):
            # refs holds the referenced address so you can use them later
            refs.add(next_head)
            for ref in refs:
            	print("%x "%ref)
            return "Conditional Branch"
        else:
            return "Unconditional Branch"           
    else:
        return "Not JMP/Branch at all"

def if_ins_call(addr, code_seg_name):
	text = GetDisasm(addr)
	substr = text.split(";")
	if len(substr) == 2:
		nor_str = substr[1].strip()
		for functionAddr in Functions():
			if cmp(nor_str, GetFunctionName(functionAddr)) == 0:
				sg = SegByBase(SegByName(code_seg_name)) 
				if functionAddr in range(SegStart(sg), SegEnd(sg)):
					return (functionAddr, 0) #normal func jalr $t9
				else:
					return (nor_str, 1) #lib func; jr/jalr $t9
	else:
		op = GetMnem(addr)
		dst = GetOpnd(addr, 0)
		if op in ["jal"]:
			for functionAddr in Functions():
				if dst in GetFunctionName(functionAddr):
					return (functionAddr, 0) # jal sub_
	return None


def get_block(addr):
	func_addr = GetFunctionAttr(addr, 0)
	if func_addr== 0xffffffff:
		return None
	cfg =idaapi.FlowChart(idaapi.get_func(func_addr))
	for block in cfg:
		if addr in range(block.startEA, idc.PrevHead(block.endEA) + 1):
			return block
	return None

def if_load_reg_ins(ins_addr):
	text = GetDisasm(ins_addr)
	op = GetMnem(ins_addr)
	dst = GetOpnd(ins_addr, 0)
	if(op in ["la", "li", "addiu", "move"] and dst in ["$a0", "$a1", "$a2", "$sp"]): 
		#jr $t9;  addiu $sp, 28
		return 1
	return 0

def if_nop(ins_addr):
	text = GetDisasm(ins_addr)
	if cmp(text, "nop") == 0:
		return 1
	return 0

def ins_analysis(ins_addr, taint_regs, start_addr, block_end, code_seg_name):

	#print "%x" %ins_addr, taint_regs
	op = GetMnem(ins_addr)
	dst = GetOpnd(ins_addr, 0)
	src = GetOpnd(ins_addr, 1)
	load_reg_flag = 0

	res = if_ins_call(ins_addr, code_seg_name)
	next_blocks = []
	if res is not None: #call 
		next_blocks.append(res[0])
		next_ins = NextHead(ins_addr)
		if(next_ins >block_end):
			return (next_blocks, taint_regs)
		if NextHead(next_ins) <= block_end:
			next_blocks.append(NextHead(next_ins))
		tmp, taint_regs = ins_analysis(next_ins, taint_regs, start_addr, block_end, code_seg_name)
		return (next_blocks , taint_regs)
		
	else:
		if start_addr == ins_addr:
			last_ins =PrevHead(ins_addr)
			res = if_ins_call(last_ins, code_seg_name)
			if res is not None and res[1] == 1:
				#prev ins is jalr libfunction
				next_blocks.append(res[0])
				next_ins = NextHead(ins_addr)
				if next_ins <= block_end:
					next_blocks.append(next_ins)
				return (next_blocks, taint_regs)
			else:
				return (None, taint_regs)
					
		else:
			#normal function
			
			if op in ["move"]:
				if src in taint_regs:
					taint_regs.add(dst)
			if op in ["move", "la", "li", "lw", "addiu"]:
				if src not in taint_regs:
					if dst in taint_regs:
						taint_regs.remove(dst)
			return (None, taint_regs)
'''
def ins_analysis(ins_addr, taint_regs, start_addr, block_end):

	#print "%x" %ins_addr, taint_regs
	op = GetMnem(ins_addr)
	dst = GetOpnd(ins_addr, 0)
	src = GetOpnd(ins_addr, 1)
	load_reg_flag = 0

	res = if_ins_call(ins_addr)
	next_blocks = []
	if res is not None: #call 
		if res[1] == 1: #lib function
			next_blocks.append(res[0])
			next_ins = NextHead(ins_addr)
			if(next_ins >block_end):
				return (next_blocks, taint_regs)
			if if_load_reg_ins(next_ins):
				if NextHead(next_ins) <= block_end:
					next_blocks.append(NextHead(next_ins))
				tmp, taint_regs = ins_analysis(next_ins, taint_regs, start_addr, block_end)
				return (next_blocks , taint_regs)
			elif if_nop(next_ins):
				if NextHead(next_ins) <= block_end:
					next_blocks.append(NextHead(next_ins))
				return (next_blocks , taint_regs)
			else:
				#print("******%x" %next_ins, GetDisasm(next_ins))
				if NextHead(next_ins) <= block_end:
					next_blocks.append(NextHead(next_ins))
				return (next_blocks , taint_regs)
		elif res[1] == 0: #normal function
			next_blocks.append(res[0])
			next_ins = NextHead(ins_addr)
			if(next_ins <= block_end):
				next_blocks.append(next_ins)
			return (next_blocks, taint_regs)
	else:
		if start_addr == ins_addr:
			last_ins =PrevHead(ins_addr)
			res = if_ins_call(last_ins)
			if res is not None and res[1] == 1:
				#prev ins is jalr libfunction
				next_blocks.append(res[0])
				next_ins = NextHead(ins_addr)
				if next_ins <= block_end:
					next_blocks.append(next_ins)
				return (next_blocks, taint_regs)
			else:
				return (None, taint_regs)
					
		else:
			#normal function
			
			if op in ["move"]:
				if src in taint_regs:
					taint_regs.add(dst)
			if op in ["move", "la", "li", "lw"]:
				if src not in taint_regs:
					if dst in taint_regs:
						taint_regs.remove(dst)
			return (None, taint_regs)
'''

'''
if libname in ["saveText", "CfgGetField", "aspInit", "cgiFree"]: #video.cgi
	return (2, taint_regs)
if libname in ["CfgSetField", "aspLoad", "aspFree", "set_PPPoE", "safeReboot", "set_ddns"]: #network.cgi
	return (2, taint_regs)
if libname in ["vsyslog", "fork", "ferror", "fgetpos", "sleep", "execlp", "fsetpos", "bind", "gethostbyname", "gettimeofday", "__errno_location", "recv", "getsockopt"]: #hnap_850l
	return (2, taint_regs)
if libname in ["waitpid", "execl"]:  #hnap_817lw
	return (2, taint_regs)
'''

#0 normal node, strcpy taint propogate
#1 target node, strcmp, getenv interface 
#2 not target node puts
#3 cannot know 

def process_lib(libname, taint_regs):

	target_regs = []
	if libname not in lib_arg_num:
		print("lib error", libname, taint_regs)
		return (3, taint_regs)
	else:
		arg_num = lib_arg_num[libname]
		for i in range(0, arg_num):
			target_regs.append("$a"+str(i))

	if "$v0" in taint_regs:
		taint_regs.remove("$v0")

	lib_related = 0
	for taint_reg in taint_regs:
		if taint_reg in target_regs:
			lib_related = 1
	if lib_related == 0:
		return (0, taint_regs)


	if libname in ["strlen"]:
		return (0, taint_regs)
	if libname in ["strcpy", "strncpy", "memcpy", "memncpy", "memmove", "strcat", "strncat", "strlcpy"]:
		if "$a1" in taint_regs:
			taint_regs.add("$a0")
		return (0, taint_regs)
	if libname in ["strdup", "strndup", "strdupa", "strndupa", "strchr", "strrchr", "strstr", "strrstr", "strcasestr", "strpbrk", "strsep", "memchr"]:
		if "$a0" in taint_regs:
			taint_regs.add("$v0")
			return ( 0, taint_regs)
		elif "$a1" in taint_regs:
			return (1, taint_regs)
	if libname in ["strcmp", "strncmp", "memcmp", "strcasecmp", "strncasecmp"]:
		if "$a0" in taint_regs or "$a1" in taint_regs:
			return ( 1, taint_regs)
	if libname in ["getenv"]:
		if "$a0" in taint_regs:
			return (1, taint_regs)
	if libname in ["getopt"]:
		if "$a2" in taint_regs:
			return (1, taint_regs)
	if libname in ["saveText", "puts", "fputs", "fwrite", "open", "fopen", "opendir", "readdir","mkdir", "chdir", "rmdir", "closedir", "access", "printf", "BIO_printf", "_BIO_printf", "BIO_puts", "_BIO_puts", "sprintf", "snprintf", "vsnprintf", "vfprintf", "fprintf", "system", "rename", "remove", "unlink", "rewind", "stat", "fstat", "lstat"]:	
			return (2, taint_regs)
	if libname in ["send", "sendto"]:
		if "$a1" in taint_regs:
			return (2, taint_regs)
	else:
		return (0, taint_regs)


	return (3, taint_regs)

def process_ins_to_blockend(ins_addr, taint_regs, start_addr, code_seg_name):
	block = get_block(ins_addr)
	if block is None:
		return (None,taint_regs,"not in function")

	block_end = idc.PrevHead(block.endEA)
	while ins_addr <= block_end:
		next_blocks, taint_regs = ins_analysis(ins_addr, taint_regs, start_addr, block_end, code_seg_name)
		if next_blocks is None: #normal ins
			ins_addr = NextHead(ins_addr)
		elif isinstance(next_blocks[0], str): #jalr lib funtion
			#print next_blocks[0], taint_regs
			nexts = []
			if len(next_blocks) == 2:
				nexts.append(next_blocks[1])
			if len(taint_regs) == 0: #before process lib
				return (nexts, taint_regs, "go on")
			res, taint_regs = process_lib(next_blocks[0], taint_regs)
			#print(next_blocks[0], res)
			if res == 0:
				return (nexts, taint_regs, "go on")
			elif res == 1:
				return ([], taint_regs, "target node %s" %next_blocks[0])
			elif res == 2:
				return (nexts, taint_regs, "go on")
			elif res == 3:
				return ([], taint_regs, "cannot handle")
			else:
				print("return error*********************")
		elif isinstance(next_blocks[0], (int, long)):
			return (next_blocks, taint_regs ,"go on")
		else:
			print type(next_blocks[0])
			print("process_ins_to_blockend error*********************")

	next_addr_list = []
	for succ in block.succs():
		next_addr_list.append(succ.startEA)
	return (next_addr_list, taint_regs, "go on")

def taint_analysis(load_addr, taint_reg, code_seg_name):
	start_addr = load_addr
	time_start = time.time()
	block_list = []
	block_list.append(load_addr)
	taint_regs= set()
	taint_regs.add(taint_reg)
	taint_regs_list = []
	taint_regs_list.append(taint_regs)

	'''
	succs, taint_regs = process_ins_to_blockend(load_addr, taint_regs)
	if isinstance(succs, str):
		if succs not in lib_functions:
			lib_functions[succs]= []
		lib_functions[succs].append((hex(int(load_addr)), taint_regs))
		return
	else:
		for succ in succs:
			block_list.append(succ)
			taint_regs_list.append(taint_regs)
	'''

	prev_handle_addr = {}

	while len(block_list):
		time_mid = time.time()
		time_delta = time_mid- time_start
		if time_delta > 60:
			print("time over")
			return 0
		handle_block = block_list[0]
		del block_list[0]
		taint_regs = taint_regs_list[0]
		del taint_regs_list[0]
		
		if handle_block in prev_handle_addr:
			diff = taint_regs ^ prev_handle_addr[handle_block]
			if len(diff) == 0: 
				continue
			else:
				prev_handle_addr[handle_block] = copy.deepcopy(prev_handle_addr[handle_block] | taint_regs )
				taint_regs = copy.deepcopy(prev_handle_addr[handle_block])
		else:
			prev_handle_addr[handle_block] = copy.deepcopy(taint_regs)

		succs, taint_regs, desc = process_ins_to_blockend(handle_block, taint_regs, start_addr, code_seg_name)
		#print("%x "%handle_block, taint_regs, [hex(int(succ)) for succ in succs])
		if desc.find("target node")!=-1:
			if print_debug:
				print(desc)
			return 2
		elif cmp(desc, "go on") == 0:
			if len(taint_regs) == 0:
				continue
			else:	
				for succ in succs:
					block_list.append(succ)
					taint_regs_list.append(copy.deepcopy(taint_regs))
		elif cmp(desc, "not in function") == 0:
			pass
		else:
			print(desc, "%x" %handle_block, taint_regs)
			print("taint error*********************")
			return 0
	return 1

def is_ASCII(strs):
	for i in range(0, len(strs)):
		if ord(strs[i]) > 0x7f:
			return False
	return True

def is_printable(strs):
	for i in range(0, len(strs)):
		if ord(strs[i]) < 0x20 or ord(strs[i]) > 0x7e:
			return False
	return True

def get_string(addr, end):
	out = ""
	val = Byte(addr)
	while val == 0:
		addr += 1
		val = Byte(addr)

	start_addr = addr
	if start_addr >= end:
		return "0", start_addr, addr
	while True:
		if Byte(addr)!=0:
			out += chr(Byte(addr))
		else:
			break
		addr += 1
	return out, start_addr, addr

def search_string(seg_name):
	strs_set = set()
	for s in idautils.Segments():
		if cmp(seg_name, idc.SegName(s)) == 0:
			start = idc.GetSegmentAttr(s, idc.SEGATTR_START)
			end = idc.GetSegmentAttr(s, idc.SEGATTR_END)
			print "%x ,%x" %(start, end)
			addr = start
			while addr < end:
				strs, start_addr, next_addr = get_string(addr, end)
				if start_addr >= end:
					break				
				addr = next_addr
				if is_ASCII(strs):
					#print "extract strs %x" %start_addr, strs, is_ASCII(strs)
					strs_set.add((strs, start_addr))
	return strs_set


def index_strings(strs_set, strs, flag):
	if flag == 1:
		for strs_addr_pair in strs_set:
			if strs in strs_addr_pair:
				return strs_addr_pair[1]
	elif flag == 0:
		for str_info in strs_set:
			if cmp(str(str_info), strs) == 0:
				return str_info.ea
	return 0

	

def encode_string(strs):
	#strs = strs.replace("\\r", "\\\\r")
	#strs = strs.replace("\\n", "\\\\n")
	#strs = strs.replace("\\t", "\\\\t")
	strs = strs.replace("\\", "\\\\")
	return strs


def change_byte(addr):
	a = {}
	a[0] = GetOriginalByte(addr)
	a[1] = GetOriginalByte(addr+1)
	a[2] = GetOriginalByte(addr+2)
	a[3] = GetOriginalByte(addr+3)
	a[4] = GetOriginalByte(addr+4)
	a[5] = GetOriginalByte(addr+5)
	a[6] = GetOriginalByte(addr+6)
	a[7] = GetOriginalByte(addr+7)
	PatchByte(addr, a[4])
	PatchByte(addr+1, a[5])
	PatchByte(addr+2, a[6])
	PatchByte(addr+3, a[7])
	PatchByte(addr+4, a[0])
	PatchByte(addr+5, a[1])
	PatchByte(addr+6, a[2])
	PatchByte(addr+7, a[3])

def strs_filter(strs):
	str_group = re.split('[\r\n\t]', strs)
	#str_group = strs.split('\r\n\t')
	str_group = [e for e in str_group if len(e) > 1]
	str_group = [e for e in str_group if is_printable(e)==True]
	#str_group = [e for e in str_group if '\\' not in e]
	str_group = [e for e in str_group if len(e) <= 128]
	str_group = [encode_string(e) for e in str_group ] #4416
	return str_group


idaapi.autoWait()
print(os.path.abspath(__file__)) 
assert(len(idc.ARGV) == 3)
print sys.argv[0], idc.ARGV[1], os.getcwd()
image_id = idc.ARGV[1]
type_name = idc.ARGV[2]
keyword_dir = "/home/yaowen/firmadyne/keywords"
output_dir = "/home/yaowen/firmadyne/keywords/%s" %(type_name)

res = os.path.exists(keyword_dir)
if res == 0:
	mkdir_str = "mkdir %s" %keyword_dir
	os.system(mkdir_str)

res = os.path.exists(output_dir)
if res == 0:
	mkdir_str = "mkdir %s" %output_dir
	os.system(mkdir_str)

output_file = "%s/%s" %(output_dir, image_id)
keywords_set = set()


lib_functions = {}
print_debug = 0

ori_set = set()
strs_set = set()
sc = Strings()
for s in sc:
	ori_set.add(str(s))


strs_addr_set = search_string(".rodata")
for strs_addr_pair in strs_addr_set:
	strs_set.add(strs_addr_pair[0])


print len(ori_set), len(strs_set)
print len(ori_set | strs_set)

total_strs =  ori_set | strs_set




# ----------------------------------------------------
time_start=time.time()


ori_fp = open(output_file, "w+")
already_handle = set()
i =0
for strs in total_strs:
	final_strs = strs_filter(strs)
	for final_str in final_strs:
		if final_str in already_handle:
			continue
		already_handle.add(final_str)
		new_line = "extstr" + "%d" %i + "="
		new_line+= "\""
		new_line+= final_str
		new_line+= "\"\n"
		#ori_fp.write(pair[0]+"\n")
		print i, new_line
		ori_fp.write(new_line)
		i=i+1
final_line = "long_string=\"zywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzywzyw\""
ori_fp.write(final_line)
ori_fp.close()


# static analysis
lib_arg_num_file = "/home/yaowen/EQUAFL_setup/EQUAFL++/lib_arg_num"
lib_arg_num = {}
fp = open(lib_arg_num_file, "r")
for line in fp.readlines():
	res = line.split(" ")
	lib_func = res[0]
	arg_num = int(res[1])
	lib_arg_num[lib_func] = arg_num
	#print(lib_func, arg_num)
fp.close()

total_strs_addr_set = set()
for strs in total_strs:
	if strs in ori_set:
		str_addr = index_strings(sc, strs, 0)
	else:
		str_addr = index_strings(strs_addr_set, strs, 1)
	assert(str_addr!=0)
	final_strs = strs_filter(strs)
	for final_str in final_strs:
		#print final_str, str_addr
		total_strs_addr_set.add((final_str,str_addr))

func_name_list = []
ea = BeginEA()
for funcea in Functions(SegStart(ea), SegEnd(ea)):
	functionName = GetFunctionName(funcea)
	func_name_list.append(functionName)

code_seg_name = ".text"
#code_seg_name = "LOAD"

already_handle_str = set()
for pair in total_strs_addr_set:
	if pair[0] in ori_set and pair[0] in func_name_list:
		continue
	if pair[0] in already_handle_str:
		continue
	already_handle_str.add(pair[0])
	for key_load_addr in str_ref_addr(pair[1], code_seg_name):
		dst = GetOpnd(key_load_addr, 0)
		if print_debug:
			print("+++++++++++++", s, "%x "%key_load_addr, dst)
		res = taint_analysis(key_load_addr, dst, code_seg_name)
		if res == 0:
			pass	
			#print("+++++++++++++", s, "%x "%key_load_addr, dst) 
			#print("\n")
		if res == 2:
			#print("&&&&&&&&&&", s, "%x "%key_load_addr, dst) 
			keywords_set.add(pair[0])


fp = open(output_file, "w+")
for keyword in keywords_set:
	fp.write(keyword+"\n")
fp.close()


time_end=time.time()
print('totally cost',time_end-time_start)

#---------------------------------------------

idc.Exit(0)