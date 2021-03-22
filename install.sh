#!/bin/bash

# Gruvbox
if [ ! -d ~/.vim/pack/default/start/gruvbox ]; then
    git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
fi

if [ ! -d ~/.vim/pack/tpope/start/surround ]; then
    git clone https://tpope.io/vim/surround.git ~/.vim/pack/tpope/start/surround
    vim -u NONE -c "helptags surround/doc" -c q
fi

# vim-airline
if [ ! -d ~/.vim/pack/dist/start/vim-airline ]; then
    git clone https://github.com/vim-airline/vim-airline.git ~/.vim/pack/dist/start/vim-airline
    vim -u NONE -c "helptags vim-airline/doc" -c q
fi


# fugitive
if [ ! -d ~/.vim/pack/tpope/start/fugitive ]; then
    git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/tpope/start/fugitive
    vim -u NONE -c "helptags fugitive/doc" -c q
fi

# fzf
if [ ! -d ~/.vim/pack/packages/start/fzf ]; then
    git clone https://github.com/junegunn/fzf.git ~/.vim/pack/packages/start/fzf
    git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/packages/start/fzf.vim
fi


if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Copying .vimrc to $HOME/.vimrc"
cp .vimrc ~/.vimrc
echo "Copying .vimrc to $HOME/.ideavimrc"
cp .vimrc ~/.ideavimrc
cat .ideavimrc-inc >> ~/.ideavimrc
echo "Copying .tmux.conf to $HOME/.tmux.conf"
cp .tmux.conf ~/.tmux.conf

echo "Done"
