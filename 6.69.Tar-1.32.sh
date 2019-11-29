#!/bin/bash

echo ""
echo "----------- 6.69.Tar-1.32.sh -----------"
echo ""

cd /sources/
tar xvf tar-1.32.tar.xz
cd tar-1.32

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin

make -j8
make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.32

cd /sources/
rm -rf tar-1.32