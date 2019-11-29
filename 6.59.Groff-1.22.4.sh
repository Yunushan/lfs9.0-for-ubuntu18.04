#!/bin/bash

echo ""
echo "----------- 6.59.Groff-1.22.4.sh -----------"
echo ""

cd /sources/
tar xvf groff-1.22.4.tar.gz
cd groff-1.22.4

PAGE=A4 ./configure --prefix=/usr
make -j1
make install

cd /sources/
rm -rf groff-1.22.4