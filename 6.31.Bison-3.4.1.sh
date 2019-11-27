#!/bin/bash

echo ""
echo "----------- 6.31.Bison-3.4.1.sh -----------"
echo ""

cd /sources/
tar xvf bison-3.4.1.tar.xz
cd bison-3.4.1

sed -i '6855 s/mv/cp/' Makefile.in
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.4.1
make -j1
make install

cd /sources/
rm -rf bison-3.4.1