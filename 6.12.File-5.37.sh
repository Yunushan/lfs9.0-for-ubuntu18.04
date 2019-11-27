#!/bin/bash

echo ""
echo "----------- 6.12.File-5.37.sh -----------"
echo ""

cd /sources/
tar xvf file-5.37.tar.gz
cd file-5.37

./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf file-5.37