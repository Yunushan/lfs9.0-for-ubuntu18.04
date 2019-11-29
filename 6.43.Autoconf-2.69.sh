#!/bin/bash

echo ""
echo "----------- 6.43.Autoconf-2.69.sh -----------"
echo ""

cd /sources/
tar xvf autoconf-2.69.tar.xz
cd autoconf-2.69

sed '361 s/{/\\{/' -i bin/autoscan.in
./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf autoconf-2.69