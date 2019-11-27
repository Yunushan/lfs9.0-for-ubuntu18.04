#!/bin/bash

echo ""
echo "----------- 6.33.Grep-3.3.sh -----------"
echo ""

cd /sources/
tar xvf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/usr --bindir=/bin
make -j8
make -k check
make install

cd /sources/
rm -rf grep-3.3