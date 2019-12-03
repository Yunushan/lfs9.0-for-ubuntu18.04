#!/bin/bash

echo ""
echo "----------- 7.4.Managing-Devices.sh -----------"
echo ""

#7.4.1. Dealing with duplicate devices
#As explained in Section 7.3, “Overview of Device and Module Handling”, the order in which devices with the same function appear in /dev is essentially random. E.g., if you have a USB web camera and a TV tuner, sometimes /dev/video0 refers to the camera and /dev/video1 refers to the tuner, and sometimes after a reboot the order changes to the opposite one. For all classes of hardware except sound cards and network cards, this is fixable by creating Udev rules for custom persistent symlinks. The case of network cards is covered separately in Section 7.2, “General Network Configuration”, and sound card configuration can be found in BLFS.

#For each of your devices that is likely to have this problem (even if the problem doesn't exist in your current Linux distribution), find the corresponding directory under /sys/class or /sys/block. For video devices, this may be /sys/class/video4linux/videoX. Figure out the attributes that identify the device uniquely (usually, vendor and product IDs and/or serial numbers work):

#udevadm info -a -p /sys/class/video4linux/video0
#Then write rules that create the symlinks, e.g.:

#cat > /etc/udev/rules.d/83-duplicate_devs.rules << "EOF"

# Persistent symlinks for webcam and tuner
#KERNEL=="video*", ATTRS{idProduct}=="1910", ATTRS{idVendor}=="0d81", \
#    SYMLINK+="webcam"
#KERNEL=="video*", ATTRS{device}=="0x036f", ATTRS{vendor}=="0x109e", \
#    SYMLINK+="tvtuner"

#EOF
#The result is that /dev/video0 and /dev/video1 devices still refer randomly to the tuner and the web camera (and thus should never be used directly), but there are symlinks /dev/tvtuner and /dev/webcam that always point to the correct device.