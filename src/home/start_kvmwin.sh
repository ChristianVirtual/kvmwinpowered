#!/bin/bash

configfile=/etc/vfio-pci_gpu.cfg

vfiobind() {
    dev="$1"
        vendor=$(cat /sys/bus/pci/devices/$dev/vendor)
        device=$(cat /sys/bus/pci/devices/$dev/device)
        if [ -e /sys/bus/pci/devices/$dev/driver ]; then
                echo $dev > /sys/bus/pci/devices/$dev/driver/unbind
        fi
        echo $vendor $device > /sys/bus/pci/drivers/vfio-pci/new_id

}

modprobe vfio-pci

echo "change driver for devices in " $configfile
cat $configfile | while read line;do
    echo $line
    echo $line | grep ^# >/dev/null 2>&1 && continue
        vfiobind $line
done


qemu-system-x86_64 \
-name kvm \
-enable-kvm \
-M q35,accel=kvm \
-m 8192 \
-vga none \
-boot menu=on \
-hda /winpowered/kvmwin.img \
-cdrom /home/cl/Downloads/Win8.1_EnglishInternational_x64.iso \
-cpu host,kvm=off \
-smp 3,sockets=3,cores=1,threads=1 \
-realtime mlock=off \
-redir tcp:36333::36330 \
-rtc base=utc,driftfix=slew \
-device ioh3420,bus=pcie.0,addr=1c.0,multifunction=on,port=1,chassis=1,id=root.1 \
-device piix4-ide,bus=pcie.0,id=piix4-ide \
-device vfio-pci,host=02:00.0,bus=root.1,addr=00.0,multifunction=on,x-vga=on \
-device vfio-pci,host=02:00.1,bus=root.1,addr=00.1 \
-display gtk \
-usb \
-usbdevice host:0603:00f2 \
-usbdevice host:056e:0101 \
-msg timestamp=on

#-drive if=pflash,format=raw,readonly,file=/winpowered/OVMF_CODE-pure-efi.fd \
#-drive if=pflash,format=raw,file=/winpowered/OVMF_VARS-pure-efi.fd \

# Bus 007: device 005 0603:00f2  keyboard
# Bus 007: device 004 056e:0101  mouse
# Bus 007: device 001 1d6b:0002  hub
#-usbdevice host:007.005 \
#-usbdevice host:007.004 \
