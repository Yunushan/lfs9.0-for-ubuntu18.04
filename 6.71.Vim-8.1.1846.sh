#!/bin/bash

echo ""
echo "----------- 6.71.Vim-8.1.1846.sh -----------"
echo ""

cd /sources/
tar xvf vim-8.1.1846.tar.gz
cd vim-8.1.1846

echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr
make -j8

chown -Rv nobody .
su nobody -s /bin/bash -c "LANG=en_US.UTF-8 make -j1 test" &> vim-test.log

make install
ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done

ln -sv ../vim/vim81/doc /usr/share/doc/vim-8.1.1846

cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1 

set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF


#Note
#By default, Vim only installs spell files for the English language. 
#To install spell files for your preferred language, download the *.spl and optionally,
#The *.sug files for your language and character encoding from ftp://ftp.vim.org/pub/vim/runtime/spell/ and save them to /usr/share/vim/vim81/spell/.
#To use these spell files, some configuration in /etc/vimrc is needed, e.g.

#set spelllang=en,ru
#set spell


cd /sources/
rm -rf vim-8.1.1846