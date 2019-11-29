#!/bin/bash

echo ""
echo "----------- 6.47.Gettext-0.20.1.sh -----------"
echo ""

cd /sources/
tar xvf gettext-0.20.1.tar.xz
cd gettext-0.20.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.20.1

make -j8
make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so

cd /sources/
rm -rf gettext-0.20.1