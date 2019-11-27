#!/bin/bash

echo ""
echo "----------- 6.36.GDBM-1.18.1.sh -----------"
echo ""

cd /sources/
tar xvf gdbm-1.18.1.tar.gz
cd gdbm-1.18.1

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make -j8
make check
make install

cd /sources/
rm -rf gdbm-1.18.1