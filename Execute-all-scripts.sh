#!/bin/bash

echo ""
echo "----------- Starting Execute-all-scripts.sh-----------"
echo ""

sudo chmod 777 *

sudo ./2.2.Host-System-Requirements.sh
sudo ./2.4.Creating-a-New-Partition.sh
sudo ./2.5.Creating-a-File-System-on-the-Partition.sh
sudo ./2.6.Setting-The-$LFS-Variable.sh
sudo ./2.7.Mounting-the-New-Partition.sh
sudo ./3.1.Introduction.sh
sudo ./4.2.Creating-the-$LFS-tools-Directory.sh
sudo ./4.3.Adding-the-LFS-User.sh