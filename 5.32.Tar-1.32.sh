#!/bin/bash

echo ""
echo "----------- 5.32.Tar-1.32.sh -----------"
echo ""

cd $LFS/sources
tar xvf tar-1.32.tar.xz
cd tar-1.32

./configure --prefix=/tools
make -j8
make check
make install

cd $LFS/sources
rm -rf tar-1.32