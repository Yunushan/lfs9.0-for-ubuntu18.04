#!/bin/bash

echo ""
echo "----------- Starting 2.7.Mounting-the-New-Partition.sh-----------"
echo ""

sudo mount -v -t ext4 /dev/sda5 $LFS
sudo mkdir $LFS/boot
sudo mount -v -t ext2 /dev/sda4 $LFS/boot
sudo /sbin/swapon -v /dev/sda6