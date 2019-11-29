#!/bin/bash

echo ""
echo "----------- 6.63.IPRoute2-5.2.0.sh -----------"
echo ""

cd /sources/
tar xvf iproute2-5.2.0.tar.xz
cd iproute2-5.2.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
sed -i 's/.m_ipt.o//' tc/Makefile
make -j8
make DOCDIR=/usr/share/doc/iproute2-5.2.0 install

cd /sources/
rm -rf iproute2-5.2.0