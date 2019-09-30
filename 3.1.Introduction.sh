#!/bin/bash

echo ""
echo "----------- Starting 3.1.Introduction.sh -----------"
echo ""

sudo mkdir -p -v $LFS/sources
sudo wget http://www.linuxfromscratch.org/lfs/downloads/stable/wget-list
sudo wget --input-file=wget-list --continue --directory-prefix=$LFS/sources
sudo chmod -v a+wt $LFS/sources/