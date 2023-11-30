Command line used to find this crash:

./afl-fuzz -m none -Q -i ./inputs -o ./outputs_fuzzer -x keywords ./sbin/httpd -E USER=root -E HOME=/ -E user_debug=31 -E TERM=vt102 -E PATH=/usr/bin:/bin:/usr/sbin:/sbin:/etc/ath -E LD_PRELOAD=/firmadyne/libnvram.so -E SHELL=/bin/sh -E PWD=/ @@

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please drop
me a mail at <lcamtuf@coredump.cx> once the issues are fixed - I'd love to
add your finds to the gallery at:

  http://lcamtuf.coredump.cx/afl/

Thanks :-)
