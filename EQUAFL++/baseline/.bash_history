cp /root/run_afl_f* ../firmadyne_scripts/
cp /root/vul_run_* ../firmadyne_scripts/
cp /root/afl-fuzz-nodetail dependence/afl-fuzz-nodetail 
cp /root/afl-fuzz-full dependence/afl-fuzz-full 
exit
diff ../firmadyne_scripts/generate_run_full.py /root/generate_run_full.py 
diff ../firmadyne_scripts/vul_run_aflfull.py /root/vul_run_aflfull.py 
cp /root/generate_run_full.py ../firmadyne_scripts/generate_run_full.py 
cd ../
find . -name "generate_run_full.py"
cd firmadyne
cat EQUAFL_setup.py 
ls
cd -
find . -name "generate_run_full.py"
diff firmadyne/generate_run_full.py firmadyne_scripts/generate_run_full.py 
cp /root/generate_run_full.py firmadyne/
rm firmadyne/dependence/generate_run_full.py 
diff firmadyne/vul_run_aflfull.py firmadyne_scripts/vul_run_aflfull.py 
cp /root/vul_run_aflfull.py firmadyne/
cp /root/vul_run_firmafl.py firmadyne/
diff /root/run_afl_firmafl_long.py firmadyne/run_afl_firmafl_long.py 
cp /root/run_afl_firmafl_long.py firmadyne/run_afl_firmafl_long.py 
cp /root/run_afl_full_long.py firmadyne/
exit
cat generate_run_full.py 
exit
cp run_afl_full_long.py run_afl_full_long.py 
cp /root/run_afl_full_long.py run_afl_full_long.py 
cp /root/run_afl_full_long.py ../firmadyne_scripts/
cp /root/generate_run_full.py generate_run_full.py 
cp /root/generate_run_full.py ../firmadyne_scripts/ 
exit
cd ../
find . -name "afl-fuzz-full"
cd firmadyne
cd dependence/
cp /root/afl-fuzz-full .
cd ../
cp /root/run_afl_f* .
cp /root/run_afl_f* ../firmadyne_scripts/
cp generate_run_full.py .
cp /root/generate_run_full.py .
cp /root/generate_run_full.py ../firmadyne_scripts/
exit
cp /root/generate_run_full.py generate_run_full.py 
cp /root/generate_run_full.py ../firmadyne_scripts/generate_run_full.py 
exit
cp /root/vul_run_firmafl.py vul_run_firmafl.py 
cp /root/vul_run_firmafl.py ../firmadyne_scripts/
