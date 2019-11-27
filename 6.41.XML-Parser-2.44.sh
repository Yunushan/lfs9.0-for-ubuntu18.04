#!/bin/bash

echo ""
echo "----------- 6.41.XML-Parser-2.44.sh -----------"
echo ""

cd /sources/
tar xvf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44

perl Makefile.PL
make -j8
make test
make install


cd /sources/
rm -rf XML-Parser-2.44