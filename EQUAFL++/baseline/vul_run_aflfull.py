import sys
import os

image_id = int(sys.argv[1])
run_dir =sys.argv[2]
run_core_base = sys.argv[3]

image_ip = ""

fp = open("EQUAFL_bench_compat", "r")
lines = fp.readlines()
for line in lines:
	line_arr =line.split(";")
	item_image_id = line_arr[0]
	ip = line_arr[3].strip()
	if int(item_image_id) == int(image_id):
		image_ip = ip

if image_id == 108076:
	time = 80
elif image_id == 16157:
	time =50
elif image_id == 18627:
	time = 60
elif image_id == 20880:
	time = 50
elif image_id == 19061:
	time = 60
elif image_id == 16385:
	time = 80
else:
	time = 80
cmd = "python run_afl_full_long.py %d httpd %s %d %s %s" %(image_id, image_ip, time, run_dir, run_core_base)
os.system(cmd)
