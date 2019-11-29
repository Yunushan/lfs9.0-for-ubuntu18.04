#!/bin/bash

echo ""
echo "----------- 6.50.OpenSSL-1.1.1c.sh -----------"
echo ""

cd /sources/
tar xvf openssl-1.1.1c.tar.gz
cd openssl-1.1.1c

sed -i '/\} data/s/ =.*$/;\n    memset(\&data, 0, sizeof(data));/' \
  crypto/rand/rand_lib.c

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make -j8
make test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1c
cp -vfr doc/* /usr/share/doc/openssl-1.1.1c

cd /sources/
rm -rf openssl-1.1.1c