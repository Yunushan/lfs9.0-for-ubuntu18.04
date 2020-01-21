#!/bin/bash

echo ""
echo "----------- 5.37. Changing Ownership -----------"
echo ""


echo ""
echo "----------- !!!RUN THIS FILE IN ROOT USER!!!-----------"
echo ""

export LFS=/mnt/lfs

sudo chown -R root:root $LFS/tools
