#!/bin/bash

echo ""
echo "----------- Starting 8.Grub-2.04.sh -----------"
echo ""

#Reinstallation of grub

cd /sources/
rm -rf grub-2.04
tar xvf grub-2.04.tar.xz
cd grub-2.04

./configure --prefix=/usr  \
        --sbindir=/sbin        \
        --sysconfdir=/etc      \
        --disable-efiemu       \
        --enable-grub-mkfont   \
        --with-platform=efi    \
        --disable-werror


make -j8
make install

cd /sources/
rm -rf grub-2.04