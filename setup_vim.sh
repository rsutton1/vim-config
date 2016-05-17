#!/bin/bash

# create backup directory using a timestamp for the current time
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backupdir=$(pwd)/backup/vim/$timestamp
mkdir -p $backupdir

# link vim configuration
mv ~/.vimrc $backupdir
ln -s $(pwd)/_vimrc ~/.vimrc

# install vim plugins
mv ~/.vim $backupdir
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/jlanzarotta/bufexplorer
git clone https://github.com/tomtom/tcomment_vim
git clone https://github.com/tpope/vim-surround
