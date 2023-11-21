import subprocess
import shutil

def get_container_ids_and_cmds():
    # Run the docker ps command and capture the output
    result = subprocess.run(['docker', 'ps', '--format', '{{.ID}}:{{.Command}}', '-f', 'ancestor=zyw200/equafl_full', '--no-trunc'], capture_output=True, text=True)
    return result.stdout.strip().split('\n')

def log_into_container(container_id):
    # Log into the Docker container using exec and /bin/bash
    subprocess.run(['docker', 'exec', '-it', container_id, '/bin/bash'])

def copy_operation_in_container(container_id, source_path, destination_path):
    # Perform your copy operation within the container
    # For example, you can use 'cp' command to copy a file
    subprocess.run(['docker', 'exec', container_id, 'cp', '-r', source_path, destination_path])

if __name__ == "__main__":
    # Get the list of container IDs and Cmds
    ids_cmds = get_container_ids_and_cmds()

    # Iterate over each container and perform the copy operation
    for id_cmd in ids_cmds:
        print(id_cmd)
        strs = id_cmd.split(":")
        container_id = strs[0]
        command = strs[1]
        cmd_str = command.split(" ")
        image_id = cmd_str[4]
        copy_id = cmd_str[5]
        keyword_num = cmd_str[7]
        print(image_id, copy_id, keyword_num)

        # Log into the Docker container
        # log_into_container(container_id)

        # Replace '/path/to/source/file.txt' with the actual source file path
        if copy_id != "0":
            source_path = '/home/yaowen/firmadyne/image_%s_httpd_%s/outputs_fuzzer' %(image_id, copy_id)
        else:
            source_path = '/home/yaowen/firmadyne/image_%s_httpd/outputs_fuzzer' %(image_id)

        # Replace '/path/to/destination/' with the actual destination directory path
        destination_path = '/root/image_%s_%s_%s' %(image_id, keyword_num, copy_id)

        # Perform the copy operation within the container
        copy_operation_in_container(container_id, source_path, destination_path)

        # Exit the container
        # subprocess.run(['docker', 'exec', container_id, 'exit'])

