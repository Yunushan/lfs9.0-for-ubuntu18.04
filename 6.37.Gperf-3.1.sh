#!/bin/bash

echo ""
echo "----------- 6.37.Gperf-3.1.sh -----------"
echo ""

cd /sources/
tar xvf gperf-3.1.tar.gz
cd gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make -j8
make -j1 check
make install

cd /sources/
rm -rf gperf-3.1