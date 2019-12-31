#!/bin/bash

echo ""
echo "----------- Starting 2.7.Mounting-the-New-Partition.sh -----------"
echo ""

export LFS=/mnt/lfs

sudo mkdir -pv $LFS
sudo mount -v -t ext4 /dev/sda5 $LFS
sudo mkdir $LFS/boot
sudo mount -v -t vfat /dev/sda4 $LFS/boot
sudo /sbin/swapon -v /dev/sda6

#If you desire ext2 file type for mount you can uncomment this command
#sudo mount -v -t ext2 /dev/sda4 $LFS/boot