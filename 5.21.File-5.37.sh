#!/bin/bash

echo ""
echo "----------- 5.21.File-5.37.sh -----------"
echo ""

cd $LFS/sources
tar xvf file-5.37.tar.gz
cd file-5.37

./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf file-5.37