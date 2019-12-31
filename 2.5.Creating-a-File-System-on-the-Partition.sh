#!/bin/bash

echo ""
echo "----------- Starting 2.5.Creating-a-File-System-on-the-Partition.sh -----------"
echo ""

sudo mkfs.ext4 /dev/sda5
sudo mkfs.fat -F32 /dev/sda4
sudo mkswap /dev/sda6

#If you desire ext2 file type for boot you can uncomment this command
#sudo mkfs -v -t ext2 /dev/sda4