import os
import sys

def find_program_helper(dir_name, str_name):
	os.chdir(dir_name)
	cmd = "find  . -name '%s'" %(str_name)
	res = os.popen(cmd)
	text =res.read()
	if len(text) == 0: #no results by find.
		os.chdir("../")
		return "", ""
	# arr = text.strip().split("\n")
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


ida_source = "/home/yaowen/ida-6.95/idaq"
script_dir = "/home/yaowen/EQUAFL_setup/EQUAFL++"

assert(len(sys.argv)==4)



image_id = sys.argv[1]
test_name = sys.argv[2]
image_dir = sys.argv[3]
option = 3
prog_name, type_name =  find_program(image_dir, test_name)
# cmdstr = "%s -c -A -S\"%s/analysis.py %s %s %s\" %s/%s" %(ida_source, script_dir, image_id, type_name, option, image_dir, prog_name)
cmdstr = "%s -S\"%s/analysis.py %s %s %s\" %s/%s" %(ida_source, script_dir, image_id, type_name, option, image_dir, prog_name)
# print cmdstr
os.system(cmdstr)


'''
#open all httpd
fp = open("httplist")
for line in fp.readlines():
	array = line.split(",")
	image_id = array[0].strip()
	http_name = array[1].strip()
	http_full_name = "%s/image_%s_bak/%s" %(image_source, image_id, http_name)
	cmdstr = "%s %s &" %(ida_source, http_full_name)
	os.system(cmdstr)
fp.close()
'''