#!/bin/bash

echo ""
echo "----------- 5.25.Grep-3.3.sh -----------"
echo ""

cd $LFS/sources
tar xvf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf grep-3.3