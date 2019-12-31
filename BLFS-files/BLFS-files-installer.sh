#!/bin/bash

echo ""
echo "----------- Starting BLFS-files-installer.sh-----------"
echo ""

#Make sure you are inside BLFS-files
#Make sure user name is (lfs chroot) root:/sources/
#You need to run these scripts with root user
echo "Make sure you are inside BLFS-files"
echo "Make sure user name is (lfs chroot) root:/sources/"
echo "You need to run these scripts with root user"
sleep 1

bash BLFS-packages-for-uefi-installation.sh
bash 1.Dosfstools-4.1.sh
bash 2.Popt-1.16.sh
bash 3.Pciutils-3.6.2.sh
bash 4.FreeType-2.10.1.sh
bash 5.Efivar-37.sh
bash 6.Efibootmgr-16.sh
bash 7.Unifont-12.1.04.sh
bash 8.Grub-2.04.sh