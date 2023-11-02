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
	docker run -it -v `pwd`:/root --env USER=root --privileged zyw200/equafl_full /bin/bash


	cd /home/yaowen/firmadyne
	python EQUAFL_setup.py 19061
	python vul_run.py 19061 1 0  dir 1 afl
	python vul_run.py 19061 2 1  dir 2 afl++

	16157 WN2000RPTv1	
	108076 WNDRMACv2
	20880 dir-825
	16835 DSP-W215 few seconds
	18627 dsl-2740r
	19061 dap-2330 test


	In paper, 16385, 2563, 109080, 18627, 7023, 106869


	ps -aux | grep qemu |awk '{print $2}'| xargs kill -9


# Code

	firmadyne_scripts/afl-fuzz.c  used for IoT program testing
	change_argv before execv()

# AFLPlusplus

	make STATIC=1


	https://aflplus.plus/docs/binaryonly_fuzzing/
	https://gitee.com/paulisusu/AFLplusplus/blob/stable/qemu_mode/README.persistent.md