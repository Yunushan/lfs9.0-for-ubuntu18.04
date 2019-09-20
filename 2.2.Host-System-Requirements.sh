#!/bin/bash
echo ""
echo "----------- Starting 2.2.Host-System-Requirements.sh-----------"
echo "" 

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb

#Assigning locations
location43=`sudo locate 4.3.Adding-the-LFS-User.sh | head -n 1`

#Update Repository
sudo apt update

#Necessary softwares for ubuntu 18.04
sudo apt install bison g++ texinfo gawk make -y