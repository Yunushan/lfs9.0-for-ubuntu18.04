#!/bin/bash

echo ""
echo "----------- 6.65.Libpipeline-1.5.1.sh -----------"
echo ""

cd /sources/
tar xvf libpipeline-1.5.1.tar.gz
cd libpipeline-1.5.1

./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf libpipeline-1.5.1