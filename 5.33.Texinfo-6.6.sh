#!/bin/bash

echo ""
echo "----------- 5.33.Texinfo-6.6.sh -----------"
echo ""

cd $LFS/sources
tar xvf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf texinfo-6.6