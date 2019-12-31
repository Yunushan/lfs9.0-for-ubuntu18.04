#!/bin/bash

echo ""
echo "----------- Starting 4.FreeType-2.10.1.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS
tar xvf freetype-2.10.1.tar.xz
cd freetype-2.10.1

#FreeType2 Dependencies
#Recommended
#HarfBuzz-2.6.0 (first, install without it, after it is installed, reinstall FreeType-2.10.1), libpng-1.6.37, and Which-2.21

#User Notes: http://wiki.linuxfromscratch.org/blfs/wiki/freetype2

#Installation of FreeType2
#If you downloaded the additional documentation, unpack it into the source tree using the following command:

#tar -xf ../freetype-doc-2.10.1.tar.xz --strip-components=2 -C docs
#Install FreeType2 by running the following commands:

sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h  &&

./configure --prefix=/usr --enable-freetype-config --disable-static &&
make -j8

#This package does not come with a test suite.

#Now, as the root user:

make install
#If you downloaded the optional documentation, install it as the root user:

#install -v -m755 -d /usr/share/doc/freetype-2.10.1 &&
#cp -v -R docs/*     /usr/share/doc/freetype-2.10.1 &&
#rm -v /usr/share/doc/freetype-2.10.1/freetype-config.1
#Command Explanations
#sed -ri ...: First command enables GX/AAT and OpenType table validation and second command enables Subpixel Rendering. Note that Subpixel Rendering may have patent issues. Be sure to read the 'Other patent issues' part of http://www.freetype.org/patents.html before enabling this option.

#--enable-freetype-config: This switch ensure that the man page for freetype-config is installed.

#--without-harfbuzz: If harfbuzz is installed prior to freetype without freetype support, use this switch to avoid a build failure.

#--disable-static: This switch prevents installation of static versions of the libraries.

#cp builds/unix/freetype-config /usr/bin: Manually place the freetype configureation program needed by other programs when using the freetype library.

#Contents
#Installed Program:
#freetype-config
#Installed Library:
#libfreetype.so
#Installed Directories:
#/usr/include/freetype2 and /usr/share/doc/freetype-2.10.1
#Short Descriptions
#freetype-config

#is used to get FreeType compilation and linking information.

#libfreetype.so

#contains functions for rendering various font types, such as TrueType and Type1.

cd $BLFS
rm -rf freetype-2.10.1