#coding=utf-8"

import os
import subprocess
import sys


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



def arg_encode(url): #need add more
	new_url = url.replace("(","\(")
	new_url = new_url.replace(")", "\)")
	#new_url = new_url.replace("*", "\*")
	new_url = new_url.replace("|", "\|")#11143
	new_url = new_url.replace(",", "") #105607, 11349
	new_url = new_url.replace(" ", "\ ") #105950 HTTP_ACCEPT_ENCODING=gzip deflate
	new_url = new_url.replace(";", "\;") #105943
	return new_url


def parse_args_envs(image_id, type_name):
	filename =  "args_file/%s/%s_%s" %(type_name, image_id, type_name)
	res = os.path.exists(filename)
	if res == 0:
		return None
	fp = open(filename)

	text1 = fp.readline()
	arr = text1.strip("\n").split("^")
	arg_list_text = ""
	for i in range(1, len(arr)):
		arg_list_text = arg_list_text + arg_encode(arr[i]) + " "
	
	text2 = fp.readline()
	arr_env = text2.strip("\n").split("^")
	env_list_text = ""
	for j in range(0, len(arr_env) -1 ):
		env_list_text = env_list_text + " -E " + arg_encode(arr_env[j])

	fp.close()	
	return arg_list_text, env_list_text




def run_afl(image_id, full_name, type_name, no_args, no_files, pure_qemu, copy_id, fuzzer_num, keywords_num):
	#no_args: without using the results of generate_args_envs
	#no_files: without using the results of prepare_files
	#pure_qemu: without using the qemu in USER_FUZZ, useing qemu in AFL instead.

	if no_files == 1:
		image_dir = "image_%s_%s" %(image_id, "pure")
		res = os.path.exists(image_dir)
		if res == 0:
			cmdstr = "mkdir %s" %image_dir
			os.system(cmdstr)
			cmdstr = "cp -r image_%s/* %s/" %(image_id, image_dir)
			os.system(cmdstr)
	else:
		if cmp(copy_id, "0") == 0:
			image_dir = "image_%s_%s" %(image_id, type_name)
			res = os.path.exists(image_dir)
			if res == 0:
				print("image dir not prepared by prepare_files.py")
				return
		else:
			ori_image_dir = "image_%s_%s" %(image_id, type_name)
			image_dir = "image_%s_%s_%s" %(image_id, type_name, copy_id)
			cmdstr = "mkdir %s" %image_dir
			os.system(cmdstr)
			cmdstr = "cp -r %s/* %s/" %(ori_image_dir, image_dir)
			os.system(cmdstr)
	


	res = os.popen("./scripts/getArch.sh ./images/%s.tar.gz" %image_id)
	text =res.read()
	
	if "mipsel" in text:
		copy_str = "cp dependence/qemu-mipsel %s/afl-qemu-trace" %(image_dir)
		os.system(copy_str)
	elif "mipseb" in text:
		copy_str = "cp dependence/qemu-mips %s/afl-qemu-trace" %(image_dir)
		os.system(copy_str)
	elif "armel" in text:
		copy_str = "cp dependence/qemu-arm %s/afl-qemu-trace" %(image_dir)
		os.system(copy_str)


	arg_list_text, env_list_text =parse_args_envs(image_id, type_name)
	if arg_list_text is None:
		filename =  "args_file/%s/%s_%s" %(type_name, image_id, type_name)
		print("arg file not exist: %s" %filename)
		return

	#keywords selection
	if keywords_num == 0:
		keyword_file = "keywords/%s/%s" %(type_name, image_id)
	elif keywords_num == 1:
		keyword_file = "keywords/%s/%s_static" %(type_name, image_id)

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

	#fuzzer selection
	if fuzzer_num == 0:
		cmdstr = "cp dependence/afl-fuzz %s/afl-fuzz" %image_dir
	elif fuzzer_num == 1:
		cmdstr = "cp dependence/afl-fuzz++ %s/afl-fuzz" %image_dir
	os.system(cmdstr)

	config_file = "%s/USER_config" %image_dir
	fp = open(config_file, "w+")
	fp.write("image_id=%s" %image_id)
	fp.close()

	os.chdir(image_dir)

	os.system("rm -r outputs")

	if no_args == 1:
		#cmd = "chroot . ./afl-fuzz -m none -t 800000+ -Q -i ./inputs -o ./outputs -x keywords %s @@" %full_name
		cmd = "chroot . ./afl-fuzz -m none -Q -i ./inputs -o ./outputs -x keywords %s @@" %full_name
	else:
		#cmd = "chroot . ./afl-fuzz -m none -t 800000+ -Q -i ./inputs -o ./outputs -x keywords   %s %s %s @@" %(full_name, env_list_text, arg_list_text)
		cmd = "chroot . ./afl-fuzz -m none -Q -i ./inputs -o ./outputs -x keywords   %s %s %s @@" %(full_name, env_list_text, arg_list_text)
	os.system(cmd)

	os.chdir("../")

assert(len(sys.argv)==6)
image_id = sys.argv[1]
test_name = sys.argv[2]
copy_id = sys.argv[3]
fuzzer_num = int(sys.argv[4])
keywords_num = int(sys.argv[5])

image_ori_dir = "image_%s" %image_id
res = os.path.exists(image_ori_dir)
if res == 0:
	print("the image_dir:%s not exist" %image_ori_dir)

else:
	full_name, type_name =  find_program(image_ori_dir, test_name)
	print(image_id, full_name)

	no_args = 0
	no_files = 0
	pure_qemu = 0

	run_afl(image_id, full_name, type_name, no_args, no_files, pure_qemu, copy_id, fuzzer_num ,keywords_num)


