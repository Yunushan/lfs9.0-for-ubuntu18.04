#!/bin/bash

echo ""
echo "----------- 6.53.Meson-0.51.1.sh -----------"
echo ""

cd /sources/
tar xvf meson-0.51.1.tar.gz
cd meson-0.51.1

python3 setup.py build
python3 setup.py install --root=dest
cp -rv dest/* /

cd /sources/
rm -rf meson-0.51.1