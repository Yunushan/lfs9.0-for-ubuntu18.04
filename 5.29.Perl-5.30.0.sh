#!/bin/bash

echo ""
echo "----------- 5.29.Perl-5.30.0.sh -----------"
echo ""

cd $LFS/sources
tar xvf perl-5.30.0.tar.xz
cd perl-5.30.0

sh Configure -des -Dprefix=/tools -Dlibs=-lm -Uloclibpth -Ulocincpth
make -j8
cp -v perl cpan/podlators/scripts/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.30.0
cp -Rv lib/* /tools/lib/perl5/5.30.0

cd $LFS/sources
rm -rf perl-5.30.0