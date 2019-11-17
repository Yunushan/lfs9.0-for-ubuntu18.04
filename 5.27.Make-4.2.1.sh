#!/bin/bash

echo ""
echo "----------- 5.27.Make-4.2.1.sh -----------"
echo ""

cd $LFS/sources
tar xvf make-4.2.1.tar.gz
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c
./configure --prefix=/tools --without-guile
make -j8
make check
make install

cd $LFS/sources
rm -rf make-4.2.1