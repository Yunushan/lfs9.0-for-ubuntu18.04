#!/bin/bash

echo ""
echo "----------- Starting 4.3.Adding-the-LFS-User.sh-----------"
echo ""
location44=`sudo locate 4.4.Setting-Up-the-Environment.sh | head -n 1`


sudo groupadd lfs
sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
printf "\n\nLFS Password  "
sudo passwd lfs
sudo chown -v lfs $LFS/sources
sudo chown -v lfs $LFS/tools
su - lfs -c "bash $location44"