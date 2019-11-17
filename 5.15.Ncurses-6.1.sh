#!/bin/bash

echo ""
echo "----------- 5.15.Ncurses-6.1.sh -----------"
echo ""

cd $LFS/sources
tar xvf ncurses-6.1.tar.gz
cd ncurses-6.1

sed -i s/mawk// configure
./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite
make -j8
make install
ln -s libncursesw.so /tools/lib/libncurses.so

cd $LFS/sources
rm -rf ncurses-6.1