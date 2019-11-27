#!/bin/bash

echo ""
echo "----------- 6.42.Intltool-0.51.0.sh -----------"
echo ""

cd /sources/
tar xvf intltool-0.51.0.tar.gz
cd intltool-0.51.0

sed -i 's:\\\${:\\\$\\{:' intltool-update.in
./configure --prefix=/usr
make -j8
make check
make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO

cd /sources/
rm -rf intltool-0.51.0