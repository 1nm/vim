#!/bin/bash

cp .vimrc-plugin-install ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
vim +PluginInstall +qall
cp .vimrc ~/.vimrc
