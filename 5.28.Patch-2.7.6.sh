#!/bin/bash

echo ""
echo "----------- 5.28.Patch-2.7.6.sh -----------"
echo ""

cd $LFS/sources
tar xvf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf patch-2.7.6