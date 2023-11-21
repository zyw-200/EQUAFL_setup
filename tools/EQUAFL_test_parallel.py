import subprocess
import sys

def test_parallel(num, image_id, option):
	if option == 0:
		fuzzer_num = 0
		keyword_num = 0
		qemu_num = 0
	elif option == 1:
		fuzzer_num = 3 #afl-new
		keyword_num = 1 # keywords_static
		qemu_num = 2 # qemu-cmd
	elif option == 2:
		fuzzer_num = 3 #afl-new
		keyword_num = 2 # keywords_static_sorted
		qemu_num = 2 # qemu-cmd
	for i in range(0, num):
		window_name = f"Docker{i}"
		docker_command = "docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_full sh -c \"python vul_run.py %d %d %d %d %d\"" %(image_id, i, fuzzer_num, keyword_num, qemu_num)
		print(docker_command)
		# Create a new tmux window with the specified name and run the Docker command
		subprocess.run(["tmux", "new-window", "-n", window_name, docker_command])

num = int(sys.argv[1])
image_id = int(sys.argv[2])
option = int(sys.argv[3])

test_parallel(num, image_id, option)

#python3 EQUAFL_test_parallel.py 5 19061 0
#python3 EQUAFL_test_parallel.py 5 19061 2