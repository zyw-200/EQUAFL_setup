docker run --env USER=root --privileged -it  --device=/dev/net/tun -v /home/zyw/experiment/FirmAFL:/home/zyw/experiment/FirmAFL ubuntu:16.04 /bin/bash
docker run --cap-add NET_ADMIN --cap-add NET_RAW --device=/dev/net/tun -d -p 1193:1193/udp --env USER=root -it  -v /home/zyw/experiment/FirmAFL:/home/zyw/experiment/FirmAFL ubuntu:16.04 /bin/bash
apt-get install libpixman-1-dev liblzo2-2 uml-utilities net-tools sudo iputils-ping iproute2 telnet python qemu libnuma-dev libpng16-16
#docker run -it  --env USER=root --privileged -it  --device=/dev/net/tun -v /home/zyw/experiment/:/home/zyw/experiment/ f79afbed9a38 /bin/bash
#docker exec  -it cd204c610f96 bash
#docker ps
docker load < dependence/zyw_image.tar
docker commit <container_id> <image_name>
docker save <image_name> >xx.tar 
docker load < /root/mydjango-save-1016.tar  


psql -d firmware -h localhost -U firmadyne

docker run -it --cpuset-cpus=1 --env USER=root --privileged -it  --device=/dev/net/tun -v /home/zyw/experiment/FirmAFL/firmadyne/outputs:/home/zyw/image/outputs -v /home/zyw/experiment/:/home/zyw/experiment/ b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun -v /home/zyw/experiment/FirmAFL/firmadyne/outputs:/home/zyw/image/outputs -v /home/zyw/experiment/:/home/zyw/experiment/ b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/:/home/zyw/experiment/ b25c40366c54 /bin/bash

docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work10/image_10853:/home/zyw/image_10853 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/image_105609:/home/zyw/image_105609 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work11/image_161160:/home/zyw/image_161160 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work10/image_9054:/home/zyw/image_9054 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work10/image_9050:/home/zyw/image_9050 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work10/image_9925:/home/zyw/image_9925 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work6/image_10566:/home/zyw/image_10566 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work1/image_105600:/home/zyw/image_105600 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work8/image_129780:/home/zyw/image_129780 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work9/image_129781:/home/zyw/image_129781 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/iotse/zyw-work/FirmAFL/work5/image_161161:/home/zyw/image_161161 b25c40366c54 /bin/bash


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/work1/image_10853:/home/zyw/image_10853 b25c40366c54 /bin/bashd
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/work3/image_129780:/home/zyw/image_129780 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/work6/image_129781:/home/zyw/image_129781 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/work2/image_9925:/home/zyw/image_9925 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_10853:/home/zyw/image_10853 b25c40366c54 /bin/bash


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/wsn/zyw/work_new_3/image_9050:/home/zyw/image_9050 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/wsn/zyw/work_new_2/image_129780:/home/zyw/image_129780 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/wsn/zyw/work_new_2/image_129781:/home/zyw/image_129781 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/wsn/zyw/work_new_1/image_161160:/home/zyw/image_161160 b25c40366c54 /bin/bash

docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_9050:/home/zyw/image_9050 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_105609:/home/zyw/image_105609 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_105609:/home/zyw/image_105609 b25c40366c54 /bin/bash


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_10853:/home/zyw/image_10853 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_129781:/home/zyw/image_129781 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/FirmAFL/image_161161:/home/zyw/image_161161 b25c40366c54 /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/zyw/experiment/firmadyne:/home/zyw/image_9050 b25c40366c54 /bin/bash


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen:/home/yaowen zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne/image_16157_httpd:/home/yaowen/firmadyne/image_16157_httpd zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne/image_108076_httpd:/home/yaowen/firmadyne/image_108076_httpd zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne/image_20880_httpd:/home/yaowen/firmadyne/image_20880_httpd zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne/image_16385_httpd:/home/yaowen/firmadyne/image_16385_httpd zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne/image_18627_httpd:/home/yaowen/firmadyne/image_18627_httpd zyw_image /bin/bash


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/firmadyne:/home/yaowen/firmadyne zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun -v /home/yaowen/firmadyne:/home/yaowen/firmadyne zyw200/firmfuzzer /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun -v /home/yaowen/firmadyne:/home/yaowen/firmadyne zyw200/equafl /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun -v /home/yaowen/firmadyne:/home/yaowen/firmadyne ubuntu /bin/bash


python run_afl_full.py 16157 httpd 192.168.1.250 55 1
python run_afl.py 16157 httpd  1
python run_afl_full.py 16385 httpd 192.168.0.60 60 3
python run_afl.py 16385 httpd 3
python run_afl_full.py 108076 httpd 192.168.1.1 80 6
python run_afl.py 108076 httpd 6
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/user/108076/* long_run/user/108076/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/user/19061/* long_run/user/19061/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/full/19061/* long_run/full/19061/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/user/16385/* long_run/user/16385/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/full/16385/* long_run/full/16385/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/full/108076/* long_run/full/108076/
scp -r yaowen@155.69.144.228:/home/yaowen/firmadyne/long_run/user/108076/* long_run/user/108076/

scp /home/yaowen/FirmAFL_2020/qemu_mode/DECAF_qemu_2.10/mipsel-softmmu/qemu-system-mipsel yaowen@155.69.144.228:/home/yaowen/firmadyne/dependence/qemu-system-mipsel-static
scp /home/yaowen/FirmAFL_2020/qemu_mode/DECAF_qemu_2.10/mips-softmmu/qemu-system-mips yaowen@155.69.144.228:/home/yaowen/firmadyne/dependence/qemu-system-mips-static


cp /home/zyw/FirmAFL/qemu_mode/DECAF_qemu_2.10/mipsel-softmmu/qemu-system-mipsel qemu-system-mipsel
cp /home/zyw/FirmAFL/user_mode/mipsel-linux-user/qemu-mipsel afl-qemu-trace

cp /home/zyw/FirmAFL/qemu_mode/DECAF_qemu_2.10/mips-softmmu/qemu-system-mips qemu-system-mips
cp /home/zyw/FirmAFL/user_mode/mips-linux-user/qemu-mips afl-qemu-trace

sql
select * from image_new where network_inferred is Null
select * from image_new where upper(firmname) like '%DSL%'
select * from image_new where upper(firmname) like '%DCS%' and network_inferred!='False'

CREATE TABLE public.image_new
(
  image_id integer NOT NULL,
  firmname character varying NOT NULL,
  product character varying,
  version character varying,
  description character varying,
  brand integer NOT NULL DEFAULT 1,
  hash character varying,
  rootfs_extracted boolean DEFAULT false,
  kernel_extracted boolean DEFAULT false,
  network_inferred character varying,
  network_connection boolean DEFAULT false,
  arch character varying,
  kernel_version character varying,
  port character varying,
  CONSTRAINT image_new_pkey PRIMARY KEY (image_id)
)



CREATE TABLE public.candidate
(
  image_id integer NOT NULL,
  product character varying,
  version character varying,
  brand character varying,
  network_inferred character varying,
  port character varying,
  CONSTRAINT image_new_pkey PRIMARY KEY (image_id)
)

ps -aux | grep qemu-system-arm |awk '{print $2}'| xargs kill -9
ps -aux | grep qemu-system-mips |awk '{print $2}'| xargs kill -9
ps -aux | grep afl-qemu-trace |awk '{print $2}'| xargs kill -9
export PGPASSWORD=firmadyne
ps -aux | grep run_full |awk '{print $2}'| xargs kill -9
ps -aux | grep meld |awk '{print $2}'| xargs kill -9
ps -aux | grep systrace |awk '{print $2}'| xargs kill -9
ps -aux | grep teamviewer |awk '{print $2}'| xargs kill -9
ps -aux | grep 161161 |awk '{print $2}'| xargs kill -9
ps -aux | grep nbench_new |awk '{print $2}'| xargs kill -9
ps -aux | grep 9050 |awk '{print $2}'| xargs kill -9
cscp -r FirmAFL_config iotse@10.10.12.90:/home/iotse/zyw-work/FirmAFL/
scp move_and_clean_iotse.py iotse@10.10.12.90:/home/iotse/zyw-work/FirmAFL/
b hw/core/irq.c:50 if afl_user_fork && into_syscall == 4005 && irq->n!=0 && level == 1
b block/block-backend.c:1224 if analysis_start == 1
b block/io.c:837 if (analysis_start == 1 && cmp_res == 0)
b block/block-backend.c:1259 if (analysis_start == 1)
b util/thread-pool.c:291 if (thread_pool == 1)
../qemu_mode/qemu/qemu-img convert -f raw -O qcow2 ./scratch/1/image.raw ./scratch/1/image.qcow2
../qemu_mode/DECAF_qemu_2.10/qemu-img convert -f raw -O qcow2 ./image.raw ./image.qcow2

 /opt/cross/mipsel-linux-musl/bin/mipsel-linux-musl-gcc -static test.c



 Alphanetworks
wrgnd08_dlob_dir815 
 etc/config/image_sign
wrgac24_dlob.hans_dir817lw
ipcs -m


docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/FirmAFL_2020:/root zyw_image /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  -v /home/yaowen/FirmAFL_2020:/root firmfuzzer /bin/bash


###########
docker run -it -v `pwd`:/root/ --rm thepatrickstar/kongan-taint /bin/bash
docker commit -m "modify start.py" b4eb09aef69c thepatrickstar/kongan-taint:latest
docker push thepatrickstar/kongan-taint:latest
docker run -t -v `pwd`:/root/ --rm thepatrickstar/kongan-taint python /afl/start.py /root/example_x86_bug /root/inputs/ /root/final_output /root/keywords 10
docker run -t -v `pwd`:/root/ --rm thepatrickstar/kongan-taint python /afl/start.py --i /root/inputs/ --o /root/final_output --k /root/keywords --t 10 /root/example_x86_bug @@
kubectl create deployment my-dep --image=thepatrickstar/kongan-taint
kubectl run sdd --image=thepatrickstar/kongan-taint --command -- python /afl/start.py --i /root/inputs/ --o /root/final_output --k /root/keywords --t 10 /root/example_x86_bug @@

1.停止所有的container，这样才能够删除其中的images：

docker stop $(docker ps -a -q)

如果想要删除所有container的话再加一个指令：

docker rm $(docker ps -a -q)

2.查看当前有些什么images

docker images

3.删除images，通过image的id来指定删除谁

docker rmi <image id>

想要删除untagged images，也就是那些id为<None>的image的话可以用

docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

要删除全部image的话

docker rmi $(docker images -q)


du -h --max-depth=1
df -h 

tmux a -t 0

make ARCH=mips CROSS_COMPILE=/opt/cross/mipseb-linux-musl/bin/mipseb-linux-musl- O=./build/mipseb -j8
make ARCH=mips CROSS_COMPILE=/opt/cross/mipsel-linux-musl/bin/mipsel-linux-musl- O=./build/mipsel -j8

make ARCH=mips CROSS_COMPILE=/opt/cross/mipseb-linux-musl/bin/mipseb-linux-musl- modules
make ARCH=mips CROSS_COMPILE=/opt/cross/mipseb-linux-musl/bin/mipseb-linux-musl- module_install

 apt-get install gcc-mips-linux-gnu


void cross_process_mutex_first_init()
{
    key_t key_id = ftok(".", 1);
    //printf("???????????? key_id:%d\n", key_id);
    //shmid = shmget(key_id, sizeof(pthread_mutex_t), IPC_CREAT | IPC_EXCL | 0644);
    shmid = shmget(key_id, sizeof(pthread_mutex_t), IPC_CREAT );
    if (shmid < 0)
    {
        perror("shmget() create failed");
        return -1;
    }
    printf("shmget() create success, shmid is %d.\n", shmid);
 
    p_mutex_shared = shmat(shmid, NULL, 0);
    if (p_mutex_shared == (void *)-1)
    {
        perror("shmat() failed");
        // 删除共享内存，这里实际只是标记为删除，真正的删除动作在所有挂接的进程都脱接的状态下进行。
        // 同时不允许有新进程挂接到该共享内存上。
        shmctl(shmid, IPC_RMID, 0);
        return -2;
    }
    printf("shmat() success.\n");
 
    // 初始化共享内存段，存放互斥锁，该锁用于不同进程之间的线程互斥。
    pthread_mutexattr_t mutextattr;
    pthread_mutexattr_init(&mutextattr);
    // 设置互斥锁在进程之间共享
    pthread_mutexattr_setpshared(&mutextattr, PTHREAD_PROCESS_SHARED);
    pthread_mutex_init(p_mutex_shared, &mutextattr);
}


qemu_mode/DECAF_qemu_2.10/net/tap.c : solve iteration slow down of in docker 
vl.c: net_init_clients()
util/thread-pool.c spawn_thread_after_fork add worker thread in child process

USER:
linux-user/signal.c: queue_signal 129781 remove_tmp_files
write_aflcmd_complete: need get reponse from full 

git checkout --file dicard change in working directory

  
### TriforceAFL_new

		A tool for simulation, dynamic analysis and fuzzing of IoT firmware.
		Combination of TriforceAFL, firmadyne and DECAF.

#### DECAF: upgraded to the newest qemu version 2.10.1
		It is included in qemu_mode/qemu dir. 
		In our case, run ./configure --target-list=mipsel-softmmu
		Run make

#### Firmadyne: we use its custom kernel and libnvram to emulate IoT firmware. 
		cd firmadyne 
		See README in firmadyne and do as it says.(NOTICE: need to set FIRMWARE_DIR in firmadyne.config
		Here, we test DIR-815_FIRMWARE_1.01.ZIP, a router firmware image based on mipsel cpu arch.
		run "../qemu_mode/qemu/qemu-img convert -f raw -O qcow2 ./scratch/2/image.raw ./scratch/2/image.qcow2"		
		Finally, we replace the run.sh in scratch/(num)/ with our modified one (In firmadyne_dev dir).
		



  


#### Usage:
		cd firmadyne
		Run ./scratch/(num)/run.sh 
		In another terminal, run 'telnet 127.0.0.1 4444', into qemu monitor console.
		FirmFuzzer plugin:
			load_plugin ../qemu_mode/qemu/plugins/callbacktests/callbacktests.so
			do_callbacktests httpd
			do_callbacktests hedwig.cgi
			When firmware system initialization is completed and poll system call is executed, open a Browser, type a request "192.168.0.1/hedwig.cgi" in url, the fuzz process will be started.
		MalScalpel plugin:
			load_plugin ../qemu_mode/qemu/plugins/unpacker/unpacker.so
			trace_by_name mirai.mpsl
			Then, telnet into system "telnet 192.168.0.1" with username "Alphanetworks" and password "wrgnd08_dlob_dir815"
			Run "/FILE_LOAD/mirai.mpsl", the plugin works.


#strict-prototypes
-Werror=implicit-function-declaration 
function declaration isn't a prototype (void)
no previous prototype for ‘write_aflcmd’ [-Werror=missing-prototypes]

translate.c decode_sleb128
 hon run_afl.py 16157 httpd  1

ps -aux | grep qemu-system-mips |awk '{print $2}'| xargs kill -9
ps -aux | grep qemu |awk '{print $2}'| xargs kill -9
ps -aux | grep afl-qemu-trace |awk '{print $2}'| xargs kill -9

108076 "WNDRMACv2" without HOST
16157 "WN2000RPTv1" GET /.HTTP/1.6 chr(0x8d) + chr(0x0a)
18627 "dsl-2740r" POST /HNAP1/
20880 "dir-825" GET /vct_wan
19061 "dap-2330" 
16385 "dsp-w215" without URL

docker run -it --env USER=root --privileged -it  --device=/dev/net/tun -v /home/yaowen/firmadyne:/home/yaowen/firmadyne zyw200/equafl /bin/bash
docker run -it --env USER=root --privileged -it  --device=/dev/net/tun  zyw200/equafl /bin/bash
docker run -it --env USER=root --privileged -it  zyw200/equafl /bin/bash

ps -aux | grep qemu |awk '{print $2}'| xargs kill -9
ps -aux | grep arm |awk '{print $2}'| xargs kill -9



python run_afl_full_server.py 108076 httpd 192.168.1.1 80 1
python run_afl_full_server.py 16157 httpd 192.168.1.250 50 1
python run_afl_full_server.py 18627 httpd 192.168.1.1 60 1
python run_afl_full_server.py 20880 httpd 192.168.0.1 50 1
python run_afl_full_server.py 19061 httpd 192.168.0.50 60 1
python run_afl_full_server.py 16385 httpd 192.168.0.60 80 1 
python run_simple.py 16385 httpd 192.168.0.60 80 1 


python run_afl_firmafl_server.py 108076 httpd 192.168.1.1 80 1
python run_afl_firmafl_server.py 16157 httpd 192.168.1.250 50 1
python run_afl_firmafl_server.py 18627 httpd 192.168.1.1 60 1
python run_afl_firmafl_server.py 20880 httpd 192.168.0.1 50 1
python run_afl_firmafl_server.py 19061 httpd 192.168.0.50 80 1
python run_afl_firmafl_server.py 16385 httpd 192.168.0.60 80 1

python run_afl_server.py 108076 httpd 1 pic 2
python run_afl_server.py 16157 httpd 1 pic 1
python run_afl_server.py 18627 httpd 1 pic 5 no bug
python run_afl_server.py 20880 httpd 2 pic 3
python run_afl_server.py 19061 httpd  1 pic 6 no bug long time
python run_afl_server.py 16385 httpd 2 pic 4

'''
python run_afl_server.py 108076 httpd 0
python run_afl_server.py 16157 httpd  5
python run_afl_server.py 18627 httpd  0 wait? csl3
python run_afl_server.py 20880 httpd  2
python run_afl_server.py 19061 httpd  3  ok
python run_afl_server.py 16385 httpd 1  ok
'''

108076/   192.168.1.1  (full more than user full): 50/s firm-afl:500/s user: 2000/s
16157/  192.168.1.250 full more than user automatic send packet 500/s(8min) 1740/s (user crash) FirmAFL hang
18627/                                                          277/s user: 500/s FirmAFL hang
20880/  hang on write fd = 2  user:50/s FirmAFL error second loop? 
19061/ fork normal input no fork user:300/s  100/s
16385/ full more than user tmp ; munmap not handle quickly user:700/s ok

###########################e1000
after not ready for  16385
19969 1.0
2563 0.9980119284294234
after not ready for  109080 x
13349 0.9998719754192805
after not ready for  108076 3.2.1
108589 1.0
106030 1.0
20019 1.0
106036 1.0
106037 1.0
19510 1.0
after not ready for  20023 3.2.1
19014 1.0
20568 1.0
after not ready for  19545 3.2.1
12911 0.9998793290696272
20591 1.0
after not ready for  19061 x
19081 1.0
after not ready for  3236 buyizhi
2730 1.0
after not ready for  12979 buyizhi 90
20162 1.0
after not ready for  18627 3.2.1
18639 1.0
13528 0.9999031852066996
after not ready for  20195
13029 0.9998958658752474
106241 1.0
after not ready for  4354
108298 1.0
108299 1.0
108301 1.0
after not ready for  16157
108836 1.0
106281 1.0
108841 1.0  fork
18736 1.0
106293 1.0
after not ready for  13112
106300 1.0
106302 1.0
106306 1.0
3409 1.0
2904 1.0
4954 0.2742857142857143
107868 0.9980119284294234
108893 1.0
19807 1.0
after not ready for  107873
after not ready for  7023
after not ready for  106869
4471 1.0
after not ready for  107913
20880 0.03860294117647059
after not ready for  107923
after not ready for  4499
16275 1.0
106919 1.0
2474 1.0
4528 1.0
2521 1.0
2541 1.0
4594 0.16666666666666666
18421 1.0
final success count  66
38 6

#####################net dev
after not ready for  16385
19969 1.0
2563 0.9980119284294234
109080 0.36363636363636365
13349 0.9998719754192805
108076 1.0
after not ready for  106030
20019 1.0
after not ready for  106036
after not ready for  106037
19510 1.0
20023 1.0
after not ready for  19014
20568 1.0
after not ready for  19545
12911 0.9998793290696272
20591 1.0
after not ready for  19061
19081 1.0
3236 0.9375
12979 0.8571428571428571
20162 1.0
18627 1.0
18639 1.0
13528 0.9999031852066996
20195 1.0
13029 0.9998958658752474
106241 1.0
4354 0.9375
108298 1.0
108299 1.0
108301 1.0
16157 1.0
108836 1.0
106281 1.0
after not ready for  108841
18736 1.0
106293 1.0
13112 0.8571428571428571
106300 1.0
106302 1.0
106306 1.0
3409 1.0
2904 1.0
107868 0.9980119284294234
19807 1.0
after not ready for  7023
after not ready for  106869
4471 1.0
107913 0.6666666666666666
20880 0.9999414211235429
107923 0.6666666666666666
4499 0.9382716049382716
16275 1.0
2474 1.0
4528 1.0
2521 1.0
2541 1.0
4594 0.16666666666666666
after not ready for  18421
final success count  60


16385
109080
106030 ?
106036 ?
106037 ?
19014 ?
19545
19061
3236 buyizhi
12979 buyizhi
4354 buyizhi
108841 ?
13112 buyizhi
7023
106869
107913 buyizhi
107923 buyizhi
4499 buyizhi
4594 buyizhi
18421 ? 



need test 107923
19510 

identical item 98
16385 0.7843137254901961
after not ready for  19969
2563 0.9980119284294234
after not ready for  109080 ffff8bc0
13349 0.9998719754192805
108076 1.0
106030 1.0
after not ready for  20019
106036 1.0
106037 1.0
after not ready for  19510
20023 1.0
19014 1.0
after not ready for  20568 hang on 3
19545 1.0
12911 0.9998793290696272
after not ready for  20591 network available
after not ready for  19061 same as 18421
19081 1.0
3236 0.9375
12979 0.8571428571428571
20162 1.0
18627 1.0
18639 1.0
13528 0.9999031852066996
after not ready for  20195 network available
13029 0.9998958658752474
106241 1.0
4354 0.9375
108298 0.8
108299 0.8
108301 0.8
16157 1.0
108836 0.8
106281 1.0
108841 0.8
18736 1.0
106293 1.0
13112 0.8571428571428571
106300 1.0
106302 1.0
106306 1.0
3409 0.8
2904 1.0
107868 0.9980119284294234
after not ready for  19807 same as 18421
after not ready for  7023 same as 18421
after not ready for  106869 new adding cannot network available
4471 1.0
107913 0.6666666666666666
20880 0.9999414211235429
107923 0.6666666666666666
4499 0.9382716049382716
16275 1.0
2474 1.0
4528 0.7586206896551724
2521 0.8
2541 0.8
4594 0.9354838709677419
after not ready for  18421 fork wait之前188
final success count  60
23 11

#########new adding 106869 dir-615  [('br0', '192.168.0.1')] 18
#########new adding 7023 wndr3700v4 1.0.1.60 [('br0', '192.168.1.1')] 33

full: 

TEST                : Iterations/sec.  : Old Index   : New Index
                    :                  : Pentium 90* : AMD K6/233*
--------------------:------------------:-------------:------------
NUMERIC SORT        :          84.567  :       2.17  :       0.71
STRING SORT         :          6.8585  :       3.06  :       0.47
BITFIELD            :       3.496e+07  :       6.00  :       1.25
FP EMULATION        :          22.691  :      10.89  :       2.51
FOURIER             :          784.73  :       0.89  :       0.50
ASSIGNMENT          :          1.6014  :       6.09  :       1.58
IDEA                :          748.06  :      11.44  :       3.40
HUFFMAN             :          226.34  :       6.28  :       2.00
NEURAL NET          :


TEST                : Iterations/sec.  : Old Index   : New Index
                    :                  : Pentium 90* : AMD K6/233*
--------------------:------------------:-------------:------------
NUMERIC SORT        :          478.48  :      12.27  :       4.03
STRING SORT         :          44.986  :      20.10  :       3.11
BITFIELD            :      2.2832e+08  :      39.17  :       8.18
FP EMULATION        :          130.92  :      62.82  :      14.50
FOURIER             :          1223.5  :       1.39  :       0.78
ASSIGNMENT          :          16.051  :      61.08  :      15.84
IDEA                :          3608.8  :      55.20  :      16.39
HUFFMAN             :          1173.7  :      32.55  :      10.39

modified version: linux_vmi_init

TEST                : Iterations/sec.  : Old Index   : New Index
                    :                  : Pentium 90* : AMD K6/233*
--------------------:------------------:-------------:------------
NUMERIC SORT        :          71.571  :       1.84  :       0.60
STRING SORT         :           9.271  :       4.14  :       0.64
BITFIELD            :      3.6839e+07  :       6.32  :       1.32
FP EMULATION        :          14.734  :       7.07  :       1.63
FOURIER             :          697.78  :       0.79  :       0.45
ASSIGNMENT          :          1.1157  :       4.25  :       1.10
IDEA                :          251.06  :       3.84  :       1.14
HUFFMAN             :          185.13  :       5.13  :       1.64


modified version:  VMI_init more quickly?
TEST                : Iterations/sec.  : Old Index   : New Index
                    :                  : Pentium 90* : AMD K6/233*
--------------------:------------------:-------------:------------
NUMERIC SORT        :          110.95  :       2.85  :       0.93
STRING SORT         :          13.485  :       6.03  :       0.93
BITFIELD            :      5.5976e+07  :       9.60  :       2.01
FP EMULATION        :          21.551  :      10.34  :       2.39
FOURIER             :          802.11  :       0.91  :       0.51
ASSIGNMENT          :          1.7551  :       6.68  :       1.73
IDEA                :           329.6  :       5.04  :       1.50
HUFFMAN             :          277.01  :       7.68  :       2.45
NEURAL NET

