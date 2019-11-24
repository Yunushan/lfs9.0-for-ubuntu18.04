#!/bin/bash

echo ""
echo "----------- 6.18.MPFR-4.0.2.sh -----------"
echo ""

cd /sources/
tar xvf mpfr-4.0.2.tar.xz
cd mpfr-4.0.2

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.0.2

make -j8
make html
make check
make install
make install-html

cd /sources/
rm -rf mpfr-4.0.2