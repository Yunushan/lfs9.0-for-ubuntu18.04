#!/bin/bash

echo ""
echo "----------- 9.3.Rebooting-the-System-2.sh -----------"
echo ""

export LFS=/mnt/lfs


sudo umount -v $LFS/dev/pts
sudo umount -v $LFS/dev
sudo umount -v $LFS/run
sudo umount -v $LFS/proc
sudo umount -v $LFS/sys
sudo umount -v $LFS/boot
sudo umount -v $LFS
sudo shutdown -r now