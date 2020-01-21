#!/bin/bash

echo ""
echo "----------- Starting Install-1.sh-----------"
echo ""

echo ""
echo "----------- !!!RUN THIS COMMANDS IN ROOT USER!!!-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90
cd $lfs90

sudo bash 2.2.Host-System-Requirements.sh
sudo bash 2.4.Creating-a-New-Partition.sh
sudo bash 2.5.Creating-a-File-System-on-the-Partition.sh
sudo bash 2.6.Setting-The-LFS-Variable.sh
sudo bash 2.7.Mounting-the-New-Partition.sh
sudo bash 3.1.Introduction.sh
sudo bash 4.2.Creating-the-LFS-tools-Directory.sh
sudo bash 4.3.Adding-the-LFS-User.sh