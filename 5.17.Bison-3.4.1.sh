#!/bin/bash

echo ""
echo "----------- 5.17.Bison-3.4.1.sh -----------"
echo ""

cd $LFS/sources
tar xvf bison-3.4.1.tar.xz
cd bison-3.4.1

./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf bison-3.4.1