import os
import time

def collect_result_remote(ip):
	for image_id in [16157, 108076, 20880, 16385, 18627, 19061]:
		for option in range(0, 3):
			for inst in range(0, 5):
				output_dir = "/home1/yaowen/firmadyne/tools/image_%s_%d_%d/" %(image_id, option, inst)
				cmd = "scp -r root@%s:%s ." %(ip, output_dir)
				os.system(cmd)
				time.sleep(5)

def collect_result_option_remote(ip, option):
	# for image_id in [16157, 108076, 20880, 16385, 18627, 19061]:
	# for image_id in [19061, 18627, 16157]:
	# for image_id in [20880]:
	for image_id in [19061, 18627]:
		for inst in range(0, 5):
			output_dir = "/home1/yaowen/firmadyne/tools/image_%s_%d_%d/" %(image_id, option, inst)
			cmd = "scp -r root@%s:%s ." %(ip, output_dir)
			os.system(cmd)
			time.sleep(5)

def collect_result_option_remote_new(ip):
	output_dir = "/home1/yaowen/firmadyne/tools/image_*" 
	cmd = "scp -r root@%s:%s fuzzing_results_new/" %(ip, output_dir)
	os.system(cmd)
	time.sleep(5)


# collect_result_remote("10.96.183.253")
# collect_result_remote("10.96.183.230")

# collect_result_option_remote("10.96.183.253", 0)
# collect_result_option_remote("10.96.183.230", 1)

# collect_result_option_remote_new("10.96.183.253")
collect_result_option_remote_new("10.96.183.230")


