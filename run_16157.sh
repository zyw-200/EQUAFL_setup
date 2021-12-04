#!/bin/bash

set -u

ARCHEND=mipseb
IID=16157

if [ -e ./firmadyne.config ]; then
    source ./firmadyne.config
elif [ -e ../firmadyne.config ]; then
    source ../firmadyne.config
elif [ -e ../../firmadyne.config ]; then
    source ../../firmadyne.config
else
    echo "Error: Could not find 'firmadyne.config'!"
    exit 1
fi

IMAGE=`get_fs ${IID}`
KERNEL=`get_kernel ${ARCHEND}`
QEMU=`get_qemu ${ARCHEND}`
QEMU_MACHINE=`get_qemu_machine ${ARCHEND}`
QEMU_ROOTFS=`get_qemu_disk ${ARCHEND}`
WORK_DIR=`get_scratch ${IID}`


TAPDEV_0=tap${IID}_0
HOSTNETDEV_0=${TAPDEV_0}
echo "Creating TAP device ${TAPDEV_0}..."
sudo tunctl -t ${TAPDEV_0} -u ${USER}


echo "Bringing up TAP device..."
sudo ip link set ${HOSTNETDEV_0} up
sudo ip addr add 192.168.1.249/24 dev ${HOSTNETDEV_0}

echo "Adding route to 192.168.1.250..."
sudo ip route add 192.168.1.250 via 192.168.1.250 dev ${HOSTNETDEV_0}


TAPDEV_1=tap${IID}_1
HOSTNETDEV_1=${TAPDEV_1}
echo "Creating TAP device ${TAPDEV_1}..."
sudo tunctl -t ${TAPDEV_1} -u ${USER}


echo "Bringing up TAP device..."
sudo ip link set ${HOSTNETDEV_1} up
sudo ip addr add 100.10.10.9/24 dev ${HOSTNETDEV_1}

echo "Adding route to 100.10.10.10..."
sudo ip route add 100.10.10.10 via 100.10.10.10 dev ${HOSTNETDEV_1}


function cleanup {
    pkill -P $$
    
echo "Deleting route..."
sudo ip route flush dev ${HOSTNETDEV_0}

echo "Bringing down TAP device..."
sudo ip link set ${TAPDEV_0} down


echo "Deleting TAP device ${TAPDEV_0}..."
sudo tunctl -d ${TAPDEV_0}


echo "Deleting route..."
sudo ip route flush dev ${HOSTNETDEV_1}

echo "Bringing down TAP device..."
sudo ip link set ${TAPDEV_1} down


echo "Deleting TAP device ${TAPDEV_1}..."
sudo tunctl -d ${TAPDEV_1}

}

trap cleanup EXIT

echo "Starting firmware emulation... use Ctrl-a + x to exit"
sleep 1s

 ${QEMU} -m 256 -M ${QEMU_MACHINE} -kernel ${KERNEL} \
    -drive if=ide,format=raw,file=${IMAGE} -append "root=${QEMU_ROOTFS} console=ttyS0 nandsim.parts=64,64,64,64,64,64,64,64,64,64 rdinit=/firmadyne/preInit.sh rw debug ignore_loglevel print-fatal-signals=1 user_debug=31 firmadyne.syscall=0" \
    -nographic \
    -net nic,vlan=0 -net tap,vlan=0,id=net0,ifname=${TAPDEV_0},script=no -net nic,vlan=1 -net tap,vlan=1,id=net1,ifname=${TAPDEV_1},script=no -net nic,vlan=2 -net socket,vlan=2,listen=:2002 -net nic,vlan=3 -net socket,vlan=3,listen=:2003 | tee ${WORK_DIR}/qemu.final.serial.log
