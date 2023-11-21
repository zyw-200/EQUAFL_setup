# EQUAFL_setup

pg_dump -U firmadyne -h localhost -f EQUAFL_DATABASE firmware
pg_dump -U firmadyne -h localhost -t image_new -f EQUAFL_IMAGE_NEW firmware


# USAGE
	
	zenodo: https://zenodo.org/record/6580348

	docker pull zyw200/equafl_artifact:0.5
	docker run -it --env USER=root --privileged zyw200/equafl_artifact:0.5 /bin/bash


	apt-get install -y pkg-config libglib2.0-dev autoconf automake libtool
	cd EQUAFL
	./configure --target-list=mipsel-linux-user,mips-linux-user,arm-linux-user --static --disable-werror 
	make

	docker commit xxx zyw200/equafl_full

	docker run -it --env USER=root --privileged zyw200/equafl_full /bin/bash

	docker pull zyw200/equafl_full
	docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_full /bin/bash



	cd /home/yaowen/firmadyne

	## 19061
	python EQUAFL_setup.py 19061
	python vul_run.py 19061 1 0 0 0 #dir 1 afl keywords_ori 7858     12063   /upload_ca_int
	python vul_run.py 19061 2 0 1 0 #dir 2 afl keywords_static  7859     4505    /upload_ca_int
	python vul_run.py 19061 3 1 0 0 #dir 3 afl++ -D keywords_ori    
	python vul_run.py 19061 4 1 1 0 #dir 4 afl++ -D keywords_static
	python vul_run.py 19061 5 2 1 0 #dir 5 afl++-new keywords_static

	python vul_run.py 19061 6 0 1 0 #dir 6 afl keywords_static 3144
	python vul_run.py 19061 7 0 2 0 #dir 7 afl keywords_static_sorted  3513
	python vul_run.py 19061 8 0 2 0 #dir 8 afl keywords_static_sorted  1974

	python vul_run.py 19061 9 3 2 0 #dir 8 afl-new keywords_static_sorted  560
	python vul_run.py 19061 10 3 2 0 #dir 8 afl-new keywords_static_sorted  1062

	get the pc trace before recv
	python vul_run.py 19061 1 0 0 1

	## 18627 userfs/bin/boa  /HNAP1
	python EQUAFL_setup.py 18627
	python vul_run.py 18627 1 0 0 1 # get recv addr
	python vul_run.py 18627 1 0 0 0 #dir 1 afl keywords_ori
	python vul_run.py 18627 2 3 1 0 #dir 2 afl-new keywords_static

	## 16157  bin/boa  GET /HTTP/1.6 integer overflow
	python EQUAFL_setup.py 16157 
	python vul_run.py 16157 1 0 0 1 # get recv addr
	python vul_run.py 16157 1 0 0 0 #dir 1 afl keywords_ori  329
	python vul_run.py 16157 2 3 2 0 #dir 1 afl-new keywords_static_sorted  111

	## 20880 sbin/httpd  fgetc()? GET /vct_wan GET /chklst.txt
	python EQUAFL_setup.py 20880
	python vul_run.py 20880 1 0 0 1 # get recv addr
	python vul_run.py 20880 1 0 0 2 #dir 1 afl keywords_ori qemu-cmd  6713
	python vul_run.py 20880 2 3 2 2 #dir 2 afl-new keywords_static_sorted  qemu-cmd 36 /save_log  


	## 108076
	python EQUAFL_setup.py 108076
	python vul_run.py 108076 1 0 0 1 # get recv addr

	## 16835
	python EQUAFL_setup.py 16385
	python vul_run.py 16385 1 0 0 1 # get recv addr


	# obtina keywords 	
 	# python2 ida_open_program.py 19061 httpd /home/yaowen/firmadyne/image_19061/
	# python2 ida_open_program.py 18627 httpd /home/yaowen/firmadyne/image_18627/
	# python2 ida_open_program.py 16157 httpd /home/yaowen/firmadyne/image_16157/
	# python2 ida_open_program.py 20880 httpd /home/yaowen/firmadyne/image_20880/
	# python2 ida_open_program.py 108076 httpd /home/yaowen/firmadyne/image_108076/
	# python2 ida_open_program.py 16385 httpd /home/yaowen/firmadyne/image_16385/

	docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_full sh -c "python vul_run.py 19061 3 1 0"
	docker run -it -v `pwd`:/root -w /home/yaowen/firmadyne --env USER=root --privileged zyw200/equafl_full sh -c "python vul_run.py 19061 4 1 1"

	16157 WN2000RPTv1	
	108076 WNDRMACv2 few seconds
	20880 dir-825
	16835 DSP-W215 few seconds
	18627 dsl-2740r test 
	19061 dap-2330 test


	In paper, 16385, 2563, 109080, 18627, 7023, 106869


	ps -aux | grep qemu |awk '{print $2}'| xargs kill -9

# EQUAFL++
	ida_open_program.py
	analysis.py
	require lib_arg_num, which stores the argument number of the library function
	keywords: keywords/httpd/19061 (original keyords) keywords/httpd/19061_static (keywords after static analysis)

# AFLPlusplus
	firmadyne_scripts/afl-fuzz.c  used for IoT program testing   modification: change_argv before execv()
	for AFLplusplus/src/afl-forkserver.c, also add change_argv, can find in EQUAFL++

	move macro, eff_map and DICTIONARY STUFF in the front. Note that there are two in both fuzz_one_original and mopt_common_fuzzing.

	EQUAFL++/afl-fuzz-one-dict.c is the modification of afl-fuzz-one.c, which put the dictionary stuff in front of other mutation strategy
	

	Compilation: make STATIC=1



	https://aflplus.plus/docs/binaryonly_fuzzing/
	https://gitee.com/paulisusu/AFLplusplus/blob/stable/qemu_mode/README.persistent.md

# Server

	10.96.183.253 csl-conti-dell7858
	10.96.183.230 csl-conti-dell7859

	ps -aux | grep qemu |awk '{print $2}'| xargs kill -9
	ps -aux | grep afl-fuzz | awk '{print $2}'| xargs kill -9
	ps -aux | grep ida |awk '{print $2}'| xargs kill -9
	ps -aux | grep ssh |awk '{print $2}'| xargs kill -9

	# 11.21
	#python3 EQUAFL_test_parallel.py 5 19061 0
	#python3 EQUAFL_test_parallel.py 5 19061 2

	#python3 EQUAFL_test_parallel.py 5 18627 0
	#python3 EQUAFL_test_parallel.py 5 18627 2