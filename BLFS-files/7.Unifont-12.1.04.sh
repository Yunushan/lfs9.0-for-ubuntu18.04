#!/bin/bash

echo ""
echo "----------- Starting 7.Unifont-12.1.04.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS

mkdir -pv /usr/share/fonts/unifont
gunzip -c unifont-12.1.04.pcf.gz > \
     /usr/share/fonts/unifont/unifont.pcf