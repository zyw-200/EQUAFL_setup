Command line used to find this crash:

./afl-fuzz -m none -D -Q -i ./inputs -o ./outputs_fuzzer -x keywords ./sbin/httpd -E USER=root -E SHELL=/bin/sh -E PATH=/sbin:/usr/sbin:/bin:/usr/bin -E user_debug=31 -E LD_PRELOAD=/firmadyne/libnvram.so -E TERM=vt102 -E HOME=/ -s wapn24_dkbs_dap2330 -f /var/etc/httpd.cfg @@

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please post
to https://github.com/AFLplusplus/AFLplusplus/issues/286 once the issues
 are fixed :)

