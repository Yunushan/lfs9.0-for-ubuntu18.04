#!/bin/bash

echo ""
echo "----------- 6.15.Bc-2.1.3.sh -----------"
echo ""

cd /sources/
tar xvf bc-2.1.3.tar.gz
cd bc-2.1.3

PREFIX=/usr CC=gcc CFLAGS="-std=c99" ./configure.sh -G -O3
make -j8
make test
make install

cd /sources/
rm -rf bc-2.1.3