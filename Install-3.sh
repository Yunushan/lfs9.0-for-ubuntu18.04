#!/bin/bash

echo ""
echo "----------- Starting Install-3.sh-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90
cd $lfs90

sudo bash 5.37.Changing-Ownership.sh
sudo bash 6.2.Preparing-Virtual-Kernel-File-Systems.sh
sudo bash 6.4.Entering-the-Chroot-Environment.sh
