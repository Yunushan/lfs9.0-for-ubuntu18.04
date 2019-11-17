#!/bin/bash

echo ""
echo "----------- 5.23.Gawk-5.0.1.sh -----------"
echo ""

cd $LFS/sources
tar xvf gawk-5.0.1.tar.xz
cd gawk-5.0.1

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf gawk-5.0.1