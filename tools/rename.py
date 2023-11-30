import os

def rename_files(directory):
    for filename in os.listdir(directory):
        parts = filename.split("_")
        if len(parts) == 4 and parts[2].isdigit():
            y_value = int(parts[2])
            if y_value == 0:
                c_value = 0
            elif y_value in (1, 2):
                c_value = 3
            else:
                continue  # Skip files that don't meet the criteria

            new_filename = "_".join([parts[0], parts[1], str(y_value), f"{c_value}", parts[3]])
            os.rename(os.path.join(directory, filename), os.path.join(directory, new_filename))

# Replace 'your_directory_path' with the actual path to your directory
directory_path = 'fuzzing_results'
rename_files(directory_path)
