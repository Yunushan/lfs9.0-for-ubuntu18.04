#!/bin/bash

echo ""
echo "----------- 5.20.Diffutils-3.7.sh -----------"
echo ""

cd $LFS/sources
tar xvf diffutils-3.7.tar.xz
cd diffutils-3.7

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf diffutils-3.7