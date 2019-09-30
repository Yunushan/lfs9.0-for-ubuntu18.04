#!/bin/bash

echo ""
echo "----------- 5.11.Tcl-8.6.9.sh -----------"
echo ""

cd $LFS/sources
tar xvf tcl8.6.9-src.tar.gz
cd tcl8.6.9

cd unix
./configure --prefix=/tools
make
TZ=UTC make test
make install
chmod -v u+w /tools/lib/libtcl8.6.so
make install-private-headers
ln -sv tclsh8.6 /tools/bin/tclsh

cd $LFS/sources
rm -rf tcl8.6.9