#!/bin/bash

echo ""
echo "----------- 6.34.Bash-5.0.sh -----------"
echo ""

cd /sources/
tar xvf bash-5.0.tar.gz
cd bash-5.0

./configure --prefix=/usr                    \
            --docdir=/usr/share/doc/bash-5.0 \
            --without-bash-malloc            \
            --with-installed-readline

make -j8
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH HOME=/home make tests"
make install
mv -vf /usr/bin/bash /bin
exec /bin/bash --login +h

cd /sources/
rm -rf bash-5.0