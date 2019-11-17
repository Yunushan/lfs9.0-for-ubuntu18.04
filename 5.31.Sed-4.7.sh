#!/bin/bash

echo ""
echo "----------- 5.31.Sed-4.7.sh -----------"
echo ""

cd $LFS/sources
tar xvf sed-4.7.tar.xz
cd sed-4.7

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf sed-4.7