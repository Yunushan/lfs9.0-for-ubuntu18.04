#!/bin/bash

echo ""
echo "----------- 6.44.Automake-1.16.1.sh -----------"
echo ""

cd /sources/
tar xvf automake-1.16.1.tar.xz
cd automake-1.16.1

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.1
make -j8
make -j4 check
make install

cd /sources/
rm -rf automake-1.16.1