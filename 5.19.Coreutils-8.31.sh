#!/bin/bash

echo ""
echo "----------- 5.19.Coreutils-8.31.sh -----------"
echo ""

cd $LFS/sources
tar xvf coreutils-8.31.tar.xz
cd coreutils-8.31

./configure --prefix=/tools --enable-install-program=hostname
make
make RUN_EXPENSIVE_TESTS=yes check
make install

cd $LFS/sources
rm -rf coreutils-8.31