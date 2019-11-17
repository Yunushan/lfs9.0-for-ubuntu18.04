#!/bin/bash

echo ""
echo "----------- 6.8.Man-pages-5.02.sh -----------"
echo ""

cd /sources/
tar xvf man-pages-5.02.tar.xz
cd man-pages-5.02

make install

cd /sources/
rm -rf man-pages-5.02