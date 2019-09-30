#!/bin/bash

echo ""
echo "----------- 5.13.DejaGNU-1.6.2.sh -----------"
echo ""

cd $LFS/sources
tar xvf dejagnu-1.6.2.tar.gz
cd dejagnu-1.6.2

./configure --prefix=/tools
make install
make check

cd $LFS/sources
rm -rf dejagnu-1.6.2