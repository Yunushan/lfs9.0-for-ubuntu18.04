#!/bin/bash

echo ""
echo "----------- 6.56.Diffutils-3.7.sh -----------"
echo ""

cd /sources/
tar xvf diffutils-3.7.tar.xz
cd diffutils-3.7

./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf diffutils-3.7