#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "execute pathogen#infect()
syntax on
filetype plugin indent on" > ~/.vimrc

cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/jlanzarotta/bufexplorer
git clone https://github.com/tomtom/tcomment_vim
git clone https://github.com/tpope/vim-surround
