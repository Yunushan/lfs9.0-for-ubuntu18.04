#!/bin/bash

echo ""
echo "----------- 6.61.Less-551.sh -----------"
echo ""

cd /sources/
tar xvf less-551.tar.gz
cd less-551

./configure --prefix=/usr --sysconfdir=/etc
make -j8
make install

cd /sources/
rm -rf less-551