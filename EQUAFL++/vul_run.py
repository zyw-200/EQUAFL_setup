import sys
import os

image_id = sys.argv[1]
run_dir =sys.argv[2]
fuzzer_num = sys.argv[3]
keywords_num = sys.argv[4]



print("id are limited in 16157, 108076 ,20880, 16385, 18627, 19061")
print("They are /bin/boa (WN2000RPTv1)", "/usr/sbin/uhttpd (WNDRMACv2)", "/sbin/httpd (DIR-825)", "/usr/bin/lighttpd (DSP-W215)", "/userfs/bin/boa (DSL-2740R)", "/sbin/httpd (DAP-2330)")
cmd = "python run_afl_long.py %s httpd %s %s %s" %(image_id, run_dir, fuzzer_num, keywords_num)
print(cmd)
os.system(cmd)



