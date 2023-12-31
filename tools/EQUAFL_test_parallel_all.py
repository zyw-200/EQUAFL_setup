import subprocess
import sys

def test_parallel(num, image_list, option):
	if option == 0:
		fuzzer_num = 0
		keyword_num = 0
		qemu_num = 0
	elif option == 1:
		fuzzer_num = 3 #afl-new
		keyword_num = 1 # keywords_static
		qemu_num = 0 # qemu-cmd
	elif option == 2:
		fuzzer_num = 3 #afl-new
		keyword_num = 2 # keywords_static_sorted
		qemu_num = 0 # qemu-cmd
	elif option == 3:
		fuzzer_num = 1 # afl++
		keyword_num = 0
		qemu_num = 0
	elif option == 4:
		fuzzer_num = 2 #afl++-new
		keyword_num = 2 # keywords_static_sorted
		qemu_num = 0 # qemu-cmd
	
	run_core_base = 0
	for image_id in image_list:
		for i in range(0, num):
			window_name = f"Docker{i}"
			docker_command = "docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_test sh -c \"python vul_run.py %d %d %d %d %d %d\"" %(image_id, i, fuzzer_num, keyword_num, qemu_num, run_core_base)
			print(docker_command)
			# Create a new tmux window with the specified name and run the Docker command
			subprocess.run(["tmux", "new-window", "-n", window_name, docker_command])
		run_core_base += num


num = int(sys.argv[1])
option = int(sys.argv[2])

# image_list = [19061, 18627, 16157, 20880, 108076, 16385]
image_list = [19061, 18627, 16157, 20880]

test_parallel(num, image_list, option)

#python3 EQUAFL_test_parallel.py 5 19061 0
#python3 EQUAFL_test_parallel.py 5 19061 2