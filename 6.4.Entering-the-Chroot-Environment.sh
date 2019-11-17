#!/bin/bash

echo ""
echo "----------- 6.4.Entering-the-Chroot-Environment.sh -----------"
echo ""

export LFS=/mnt/lfs
shfiles=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo mkdir -pv /mnt/lfs/sources/lfs9.0-for-ubuntu18.04
sudo cp -rv $shfiles/* $LFS/sources/lfs9.0-for-ubuntu18.04

sudo chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h 