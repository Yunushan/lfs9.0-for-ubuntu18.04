#!/bin/bash

echo ""
echo "----------- BLFS-packages-for-uefi-installation.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

sudo mkdir -pv $BLFS
sudo wget -P $BLFS https://github.com/dosfstools/dosfstools/releases/download/v4.1/dosfstools-4.1.tar.xz
sudo wget -P $BLFS ftp://anduin.linuxfromscratch.org/BLFS/popt/popt-1.16.tar.gz
sudo wget -P $BLFS https://www.kernel.org/pub/software/utils/pciutils/pciutils-3.6.2.tar.xz
sudo wget -P $BLFS https://downloads.sourceforge.net/freetype/
sudo wget -P $BLFS https://github.com/rhboot/efivar/releases/download/37/efivar-37.tar.bz2
sudo wget -P $BLFS http://www.linuxfromscratch.org/~xry111/efivar-37-gcc_9-1.patch
sudo wget -P $BLFS https://github.com/rhboot/efibootmgr/releases/download/16/efibootmgr-16.tar.bz2
sudo wget -P $BLFS http://unifoundry.com/pub/unifont/unifont-12.1.04/font-builds/unifont-12.1.04.pcf.gz