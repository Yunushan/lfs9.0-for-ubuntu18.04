#!/bin/bash

echo ""
echo "----------- Starting 3.1.Introduction.sh -----------"
echo ""

export LFS=/mnt/lfs

sudo mkdir -v $LFS/sources
#sudo wget http://www.linuxfromscratch.org/lfs/downloads/stable/wget-list
#sudo wget --input-file=wget-list --continue --directory-prefix=$LFS/sources
sudo wget -P $LFS/sources http://mirror.fileplanet.com/lfs/pub/lfs/lfs-packages/lfs-packages-9.0.tar
sudo tar -C $LFS/sources -xvf $LFS/sources/lfs-packages-9.0.tar --strip-components 1
sudo chmod -v a+wt $LFS/sources/