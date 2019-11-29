#!/bin/bash

echo ""
echo "----------- 6.62.Gzip-1.10.sh -----------"
echo ""

cd /sources/
tar xvf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/usr
make -j8
make check
make install
mv -v /usr/bin/gzip /bin


cd /sources/
rm -rf gzip-1.10