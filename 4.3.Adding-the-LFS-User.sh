#!/bin/bash

echo ""
echo "----------- Starting 4.3.Adding-the-LFS-User.sh -----------"
echo ""

export LFS=/mnt/lfs

sudo groupadd lfs
sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
printf "\n\nLFS Password  "
sudo passwd lfs
sudo chown -v lfs $LFS/tools
sudo chown -v lfs $LFS/sources
su - lfs