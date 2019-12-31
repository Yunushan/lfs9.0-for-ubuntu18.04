#!/bin/bash

echo ""
echo "----------- Starting 1.Dosfstools-4.1.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS
tar xvf dosfstools-4.1.tar.xz
cd dosfstools-4.1


#Introduction to dosfstools
#The dosfstools package contains various utilities for use with the FAT family of file systems.

#This package is known to build and work properly using an LFS-9.0 platform.

#Package Information
#Download (HTTP): https://github.com/dosfstools/dosfstools/releases/download/v4.1/dosfstools-4.1.tar.xz

#Download MD5 sum: 07a1050db1a898e9a2e03b0c4569c4bd

#Download size: 176 KB

#Estimated disk space required: 2.9 MB

#Estimated build time: less than 0.1 SBU

#User Notes: http://wiki.linuxfromscratch.org/blfs/wiki/dosfstools

#Kernel Configuration
#Enable the following option in the kernel configuration and recompile the kernel:

#File systems --->
#  <DOS/FAT/NT Filesystems --->
#    <*/M> MSDOS fs support             [CONFIG_MSDOS_FS]
#    <*/M> VFAT (Windows-95) fs support [CONFIG_VFAT_FS]
#Installation of dosfstools
#Install dosfstools by running the following commands:

./configure --prefix=/               \
            --enable-compat-symlinks \
            --mandir=/usr/share/man  \
            --docdir=/usr/share/doc/dosfstools-4.1 &&
make -j8
#This package does not come with a test suite.

#Now, as the root user:

make install
#Command Explanations
#--enable-compat-symlinks: This switch creates the dosfsck, dosfslabel, fsck.msdos, fsck.vfat, mkdosfs, mkfs.msdos, and mkfs.vfat symlinks required by some programs.

#Contents
#Installed Programs:
#fatlabel, fsck.fat, and mkfs.fat
#Short Descriptions
#fatlabel

#set or get a MS-DOS filesystem label from a given device

#fsck.fat

#check and repair MS-DOS filesystems

#mkfs.fat

#create an MS-DOS filesystem under Linux

#Last updated on 2019-08-18 18:01:59 -0700


cd $BLFS
rm -rf dosfstools-4.1