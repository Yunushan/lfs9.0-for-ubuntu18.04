#!/bin/bash

echo ""
echo "----------- Starting 4.2.Creating-the-$LFS-tools-Directory.sh -----------"
echo ""

export LFS=/mnt/lfs

sudo mkdir -v $LFS/tools
sudo ln -sv $LFS/tools /