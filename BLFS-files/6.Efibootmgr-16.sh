#!/bin/bash

echo ""
echo "----------- Starting 6.Efibootmgr-16.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS
tar efibootmgr-16.tar.bz2
cd efibootmgr-16

make EFIDIR=LFS EFI_LOADER=grubx64.efi
#make EFIDIR=/boot/EFI

#Install the package:

#  Now as the `root` user:

install -v -D -m0755 src/efibootmgr /usr/sbin/efibootmgr &&
install -v -D -m0644 src/efibootmgr.8 \
        /usr/share/man/man8/efibootmgr.8

cd $BLFS
rm -rf efibootmgr-16