#!/bin/bash

echo ""
echo "----------- 6.23.Pkg-config-0.29.2.sh -----------"
echo ""

cd /sources/
tar xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make -j8
make check
make install

cd /sources/
rm -rf pkg-config-0.29.2