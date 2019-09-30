#!/bin/bash

echo ""
echo "----------- 5.6.Linux-5.2.8-API-Headers.sh -----------"
echo ""

cd $LFS/sources
tar xvf linux-5.2.8.tar.xz
cd linux-5.2.8

make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

cd $LFS/sources
rm -rf linux-5.2.8