import subprocess
import sys

def test_parallel(num, image_id, run_core_base):
	for i in range(0, num):
		window_name = f"Docker{i}"
		docker_command = "docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_test sh -c \"python vul_run_firmafl.py %d %d %d \"" %(image_id, i, run_core_base)
		print(docker_command)
		# Create a new tmux window with the specified name and run the Docker command
		subprocess.run(["tmux", "new-window", "-n", window_name, docker_command])

num = int(sys.argv[1])
image_id = int(sys.argv[2])
run_core_base = int(sys.argv[3])

test_parallel(num, image_id, run_core_base)

#python3 EQUAFL_test_parallel.py 5 19061 0
#python3 EQUAFL_test_parallel.py 5 19061 2