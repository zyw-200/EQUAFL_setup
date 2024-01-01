import os
import sys
import subprocess
import time
import threading


run_time = 30 #620 #20

def find_program_helper(dir_name, str_name):
	os.chdir(dir_name)
	cmd = "find  . -name '%s'" %(str_name)
	res = os.popen(cmd)
	text =res.read()
	if len(text) == 0: #no results by find.
		os.chdir("../")
		return "", ""
	arr = text.strip().split("\n")
	for i in range(0, len(arr)):
		file_name = arr[i].strip("\n")
		file_cmd_str = "file %s" %file_name
		res = os.popen(file_cmd_str)
		text =res.read()
		if "executable" in text and "text executable" not in text: #executable not shell script
			os.chdir("../")
			return file_name, file_name.split("/")[-1].strip("\n")
		elif os.path.islink(file_name):
			real_file = os.readlink(file_name)
			os.chdir("../")
			return file_name, real_file.split("/")[-1].strip("\n")
		else:
			continue
	
	#not found
	os.chdir("../")
	return "", ""

def find_http_helper(dir_name, str_name):
	os.chdir(dir_name)
	cmd = "find  . -name '%s'" %(str_name)
	res = os.popen(cmd)
	text =res.read()
	if len(text) == 0: #no results by find.
		os.chdir("../")
		return "", ""
	arr = text.strip().split("\n")
	for i in range(0, len(arr)):
		file_name = arr[i].strip("\n")
		#for httpd finding (http.cgi")
		if "." in file_name[1:] or "-" in file_name or "config" in file_name or "_" in file_name:
			continue
		file_cmd_str = "file %s" %file_name
		res = os.popen(file_cmd_str)
		text =res.read()
		if "executable" in text and "text executable" not in text: #executable not shell script
			os.chdir("../")
			return file_name, file_name.split("/")[-1].strip("\n")
		else:
			continue
	
	#not found
	os.chdir("../")
	return "", ""

def find_program(dir_name, test_name):
	#type_name in short, is real name for link. 
	#type name is short name of executable
	#type name is httpd, if test_name is "httpd"
	if "12933" in dir_name or "4671" in dir_name:
		prog_name, type_name = find_program_helper(dir_name, "mini_httpd")
		return prog_name, test_name
	if "20677" in dir_name or "19356" in dir_name:
		prog_name, type_name = find_program_helper(dir_name, "smd")
		return prog_name, test_name
		
	elif cmp(test_name, "httpd") == 0:
		prog_name, type_name = find_http_helper(dir_name, "*http*")
		if len(prog_name)!=0:
			return prog_name, "httpd"
		prog_name, type_name  = find_http_helper(dir_name, "*boa*")
		if len(prog_name)!=0:
			return prog_name, "httpd"
		prog_name, type_name  = find_http_helper(dir_name, "*web*")
		if len(prog_name)!=0:
			return prog_name, "httpd" 
		prog_name, type_name  = find_http_helper(dir_name, "*hydra*")
		if len(prog_name)!=0:
			return prog_name, "httpd" 
	else:
		prog_name, type_name = find_program_helper(dir_name, test_name)
		return prog_name, type_name

def get_short_name(prog_name):
	arr = prog_name.split("/")
	short_name = arr[len(arr) - 1].strip("\n")
	return short_name

def fun_timer(ip, run_core):
	cmdstr = "python test.py %s" %ip
	'''
	while True:
		if os.path.exists("program_start"):
			print cmdstr
			print os.getcwd()
			os.system(cmdstr)
			os.system("rm program_start")
			break
		time.sleep(15)
	'''
	print cmdstr
	os.system(cmdstr)
	time.sleep(5)

	cmd ="AFL_CPU_BINDING=%d chroot . ./afl-fuzz -m none -t 800000+ -Q -i ./inputs -o ./outputs -x keywords /bin/busybox @@" %(run_core)
	os.system(cmd)
	# os.system("./user.sh")


def fun_timer2():
	os.system("ps -aux | grep qemu |awk '{print $2}'| xargs kill -9")
	time.sleep(1)
	os.system("ps -aux | grep qemu |awk '{print $2}'| xargs kill -9")


image_id = sys.argv[1]
type_name = sys.argv[2]
ip = sys.argv[3]
wait_time = sys.argv[4]
wait_time = int(wait_time)
copy_id = sys.argv[5]
run_core_base = sys.argv[6]


#image_dir = "image_%s_%s" %(image_id, type_name)
if cmp(copy_id, "0") == 0:
	image_dir = "image_%s" %(image_id)
else:
	ori_image_dir = "image_%s" %(image_id)
	image_dir = "image_%s_%s" %(image_id, copy_id)
	cmdstr = "mkdir %s" %image_dir
	os.system(cmdstr)
	cmdstr = "cp -r %s/* %s/" %(ori_image_dir, image_dir)
	os.system(cmdstr)


os.system("echo core >/proc/sys/kernel/core_pattern")
os.system("cd /sys/devices/system/cpu\necho performance | tee cpu*/cpufreq/scaling_governor\ncd -")

print("##################prepare QEMU dependance#######################")
cmd = "cp dependence/vgabios-cirrus.bin %s" %image_dir
os.system(cmd)
cmd = "cp dependence/efi-e1000.rom %s" %image_dir
os.system(cmd)
cmd = "cp dependence/efi-pcnet.rom %s" %image_dir
os.system(cmd)

print("##################copy QEMU#######################")
res = os.popen("./scripts/getArch.sh ./images/%s.tar.gz" %image_id)
text =res.read()

arch = ""
if "mipsel" in text:
	QEMU = "./qemu-mipsel"
	arch = "mipsel"
	copy_str = "cp dependence/qemu-system-mipsel-firmafl %s/qemu-system-mipsel"  %(image_dir)
	os.system(copy_str)
	copy_str = "cp dependence/qemu-mipsel-firmafl %s/afl-qemu-trace" %(image_dir)
	os.system(copy_str)
elif "mipseb" in text:
	QEMU = "./qemu-mips"
	arch = "mipseb"
	copy_str = "cp dependence/qemu-system-mips-firmafl %s/qemu-system-mips" %(image_dir)
	os.system(copy_str)
	copy_str = "cp dependence/qemu-mips-firmafl %s/afl-qemu-trace" %(image_dir)
	os.system(copy_str)
elif "armel" in text:
	QEMU = "./qemu-arm"
	arch = "armel"
	copy_str = "cp dependence/qemu-system-arm-firmafl %s/qemu-system-arm" %(image_dir)
	os.system(copy_str)
	copy_str = "cp dependence/qemu-arm-firmafl %s/afl-qemu-trace" %(image_dir)
	os.system(copy_str)
else:
	print("error")

cmd = "cp scratch/%s/image.raw %s" %(image_id, image_dir)
os.system(cmd)


if int(image_id) in [16385]:
	cmd = "cp dependence/vmlinux.%s %s" %(arch, image_dir)
else:
	cmd = "cp dependence/vmlinux.%s_3.2.1 %s/vmlinux.%s" %(arch, image_dir, arch)
os.system(cmd)



#need afl-fuzz test.py run_firmafl.sh
keyword_file = "keywords/%s/%s" %(type_name, image_id)

cmdstr = "cp %s %s/keywords" %(keyword_file, image_dir)
os.system(cmdstr)
cmdstr = "mkdir %s/inputs" %image_dir
os.system(cmdstr)

cmdstr = "rm %s/inputs/*" %image_dir
os.system(cmdstr)
if cmp(image_id, "18627")!=0:
	cmdstr = "cp dependence/seed_get %s/inputs/" %image_dir
	print "############", cmdstr
	os.system(cmdstr)
else:
	cmdstr = "cp dependence/seed_post %s/inputs/" %image_dir
	os.system(cmdstr)

cmd = "cp dependence/procinfo.ini %s" %image_dir
os.system(cmd)

cmdstr = "cp dependence/afl-fuzz-nodetail %s/afl-fuzz" %image_dir
os.system(cmdstr)
cmdstr = "cp dependence/test.py %s/" %image_dir
os.system(cmdstr)
cmdstr = "cp dependence/user.sh %s/" %image_dir
os.system(cmdstr)
cmdstr = "python generate_run_firmafl.py %s %s" %(image_id, arch)
os.system(cmdstr)
cmdstr = "cp -f scratch/%s/run_firmafl.sh %s/" %(image_id, image_dir)
os.system(cmdstr)
cmdstr = "chmod 777 %s/run_firmafl.sh" %image_dir
os.system(cmdstr)

prog_name, type_name  =  find_program(image_dir, type_name)
short_name = get_short_name(prog_name)


os.chdir(image_dir)


print("##################create FirmAFL_config#######################")

fp = open("FirmAFL_config", "w+")
fp.write("mapping_filename=mapping_table\n")
fp.write("init_read_pipename=user_cpu_state\n")
fp.write("write_pipename=full_cpu_state\n")
fp.write("program_analysis=%s\n" %short_name)
fp.write("feed_type=FEED_HTTP\n")
fp.write("id=%s\n" %image_id)
fp.write("opti=yes")
fp.close()

'''
#(1) whole including test.py
p = subprocess.Popen("./run_full.sh",stdin=subprocess.PIPE,shell=True)
time.sleep(30)

ip = sys.argv[2]
print "##################run test.py#######################"
os.system("python test.py "+  ip)
os.system("../")
'''

os.system("rm -r outputs_firmafl")

#(2) only run_full.sh
print("wait_time", wait_time, "\n\n\n\n")
timer = threading.Timer(wait_time, fun_timer, (ip, int(run_core_base) + int(copy_id)))
timer.start()

os.system("./run_firmafl.sh")
time.sleep(1)
os.system("cd ../")



