#!/bin/bash

echo ""
echo "----------- 6.70.Texinfo-6.6.sh -----------"
echo ""

cd /sources/
tar xvf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/usr --disable-static
make -j8
make check
make install
make TEXMF=/usr/share/texmf install-tex


#The Info documentation system uses a plain text file to hold its list of menu entries. The file is located at /usr/share/info/dir.
#Unfortunately, due to occasional problems in the Makefiles of various packages, it can sometimes get out of sync with the info pages installed on the system.
#If the /usr/share/info/dir file ever needs to be recreated, the following optional commands will accomplish the task

#pushd /usr/share/info
#rm -v dir
#for f in *
#  do install-info $f dir 2>/dev/null
#done
#popd

cd /sources/
rm -rf texinfo-6.6