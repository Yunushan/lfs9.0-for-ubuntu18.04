#!/bin/bash

echo ""
echo "----------- 6.35.Libtool-2.4.6.sh -----------"
echo ""

cd /sources/
tar xvf libtool-2.4.6.tar.xz
cd libtool-2.4.6

./configure --prefix=/usr
make -j8
make check
make install

cd /sources/
rm -rf libtool-2.4.6