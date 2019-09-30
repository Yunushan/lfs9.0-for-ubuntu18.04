#!/bin/bash

echo ""
echo "----------- 5.34. Util-linux-2.34 -----------"
echo ""

cd $LFS/sources
tar xvf util-linux-2.34.tar.xz
cd util-linux-2.34

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            --without-ncurses              \
            PKG_CONFIG=""
make
make install


cd $LFS/sources
rm -rf util-linux-2.34