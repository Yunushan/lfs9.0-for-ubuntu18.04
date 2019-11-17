#!/bin/bash

echo ""
echo "----------- 5.36.Stripping.sh -----------"
echo ""

strip --strip-debug /tools/lib/*
/usr/bin/strip --strip-unneeded /tools/{,s}bin/*
rm -rf /tools/{,share}/{info,man,doc}
find /tools/{lib,libexec} -name \*.la -delete

exit