#!/bin/bash

echo ""
echo "----------- 6.67.Patch-2.7.6.sh -----------"
echo ""

cd /sources/
tar xvf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf patch-2.7.6