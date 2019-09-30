#!/bin/bash

echo ""
echo "----------- 5.24.Gettext-0.20.1.sh -----------"
echo ""

cd $LFS/sources
tar xvf gettext-0.20.1.tar.xz
cd gettext-0.20.1

./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /tools/bin

cd $LFS/sources
rm -rf gettext-0.20.1