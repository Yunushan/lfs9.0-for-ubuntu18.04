#!/bin/bash

echo ""
echo "----------- 5.26.Gzip-1.10.sh -----------"
echo ""

cd $LFS/sources
tar xvf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf gzip-1.10