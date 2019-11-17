#!/bin/bash

echo ""
echo "----------- 5.35.Xz-5.2.4.sh -----------"
echo ""

cd $LFS/sources
tar xvf xz-5.2.4.tar.xz
cd xz-5.2.4

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf xz-5.2.4