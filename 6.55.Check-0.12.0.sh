#!/bin/bash

echo ""
echo "----------- 6.55.Check-0.12.0.sh -----------"
echo ""

cd /sources/
tar xvf check-0.12.0.tar.gz
cd check-0.12.0

./configure --prefix=/usr
make -j8
make check
make docdir=/usr/share/doc/check-0.12.0 install
sed -i '1 s/tools/usr/' /usr/bin/checkmk

cd /sources/
rm -rf check-0.12.0