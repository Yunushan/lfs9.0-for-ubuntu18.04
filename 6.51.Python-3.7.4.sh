#!/bin/bash

echo ""
echo "----------- 6.51.Python-3.7.4.sh -----------"
echo ""

cd /sources/
tar xvf Python-3.7.4.tar.xz
cd Python-3.7.4

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes

make -j8
make install
chmod -v 755 /usr/lib/libpython3.7m.so
chmod -v 755 /usr/lib/libpython3.so
ln -sfv pip3.7 /usr/bin/pip3

install -v -dm755 /usr/share/doc/python-3.7.4/html 

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.7.4/html \
    -xvf ../python-3.7.4-docs-html.tar.bz2

cd /sources/
rm -rf Python-3.7.4