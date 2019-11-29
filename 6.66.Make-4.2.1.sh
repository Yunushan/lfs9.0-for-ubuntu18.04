#!/bin/bash

echo ""
echo "----------- 6.66.Make-4.2.1.sh -----------"
echo ""

cd /sources/
tar xvf make-4.2.1.tar.gz
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c
./configure --prefix=/usr
make -j8
make PERL5LIB=$PWD/tests/ check
make install

cd /sources/
rm -rf make-4.2.1