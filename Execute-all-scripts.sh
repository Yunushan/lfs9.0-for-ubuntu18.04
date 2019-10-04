#!/bin/bash

echo ""
echo "----------- Starting Execute-all-scripts.sh-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate LFS9.0-systemd-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90

sudo ./2.2.Host-System-Requirements.sh
sudo ./2.4.Creating-a-New-Partition.sh
sudo ./2.5.Creating-a-File-System-on-the-Partition.sh
sudo ./2.6.Setting-The-LFS-Variable.sh
sudo ./2.7.Mounting-the-New-Partition.sh
sudo ./3.1.Introduction.sh
sudo ./4.2.Creating-the-LFS-tools-Directory.sh
sudo ./4.3.Adding-the-LFS-User.sh
sudo ./5.37.Changing-Ownership.sh
sudo ./6.2.Preparing-Virtual-Kernel-File-Systems.sh
sudo ./6.4.Entering-the-Chroot-Environment.sh