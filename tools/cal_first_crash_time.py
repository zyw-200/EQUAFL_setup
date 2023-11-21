import sys

def cal_first_crash_time(plot_file_pos):
    first_row = 1
    start_time = 0
    with open(plot_file_pos) as fp:
        lines = fp.readlines()
        for line in lines[1:]:
            values = line.split(', ')
            if first_row:
                start_time = values[0]
                first_row = 0
            if int(values[8]) != 0:
                crash_time = values[0]
                return crash_time - start_time
    return "non crash found"

plot_file_pos = sys.argv[1]
crash_time = cal_first_crash_time(plot_file_pos)
print("crash time: ", crash_time)