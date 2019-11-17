#!/bin/bash

echo ""
echo "----------- 5.18.Bzip2-1.0.8.sh -----------"
echo ""

cd $LFS/sources
tar xvf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

make -j8
make PREFIX=/tools install

cd $LFS/sources
rm -rf bzip2-1.0.8