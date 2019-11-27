#!/bin/bash

echo ""
echo "----------- 6.19.MPC-1.1.0.sh -----------"
echo ""

cd /sources/
tar xvf mpc-1.1.0.tar.gz
cd mpc-1.1.0

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0

make -j8
make html
make check
make install
make install-html

cd /sources/
rm -rf mpc-1.1.0