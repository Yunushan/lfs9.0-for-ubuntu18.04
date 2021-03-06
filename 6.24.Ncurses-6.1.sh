#!/bin/bash

echo ""
echo "----------- 6.24.Ncurses-6.1.sh -----------"
echo ""

cd /sources/
tar xvf ncurses-6.1.tar.gz
cd ncurses-6.1

sed -i '/LIBTOOL_INSTALL/d' c++/Makefile.in
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-shared           \
            --without-debug         \
            --without-normal        \
            --enable-pc-files       \
            --enable-widec

make -j8
make install
mv -v /usr/lib/libncursesw.so.6* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libncursesw.so) /usr/lib/libncursesw.so

for lib in ncurses form panel menu ; do
    rm -vf                    /usr/lib/lib${lib}.so
    echo "INPUT(-l${lib}w)" > /usr/lib/lib${lib}.so
    ln -sfv ${lib}w.pc        /usr/lib/pkgconfig/${lib}.pc
done

rm -vf                     /usr/lib/libcursesw.so
echo "INPUT(-lncursesw)" > /usr/lib/libcursesw.so
ln -sfv libncurses.so      /usr/lib/libcurses.so

mkdir -v       /usr/share/doc/ncurses-6.1
cp -v -R doc/* /usr/share/doc/ncurses-6.1


#make distclean
#./configure --prefix=/usr    \
#            --with-shared    \
#            --without-normal \
#            --without-debug  \
#            --without-cxx-binding \
#            --with-abi-version=5 
#make sources libs
#cp -av lib/lib*.so.5* /usr/lib

cd /sources/
rm -rf ncurses-6.1