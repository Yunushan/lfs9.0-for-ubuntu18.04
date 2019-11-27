#!/bin/bash

echo ""
echo "----------- 6.30.Iana-Etc-2.30.sh -----------"
echo ""

cd /sources/
tar xvf iana-etc-2.30.tar.bz2
cd iana-etc-2.30

make -j8
make install

cd /sources/
rm -rf iana-etc-2.30