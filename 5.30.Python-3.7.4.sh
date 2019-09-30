#!/bin/bash

echo ""
echo "----------- 5.30.Python-3.7.4.sh -----------"
echo ""

cd $LFS/sources
tar xvf Python-3.7.4.tar.xz
cd Python-3.7.4

sed -i '/def add_multiarch_paths/a \        return' setup.py
./configure --prefix=/tools --without-ensurepip
make
make install

cd $LFS/sources
rm -rf Python-3.7.4