#!/bin/bash

if [ ! -d ~/.vim/pack/default/start/gruvbox ]; then
    git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Copying .vimrc to $HOME/.vimrc"
cp .vimrc ~/.vimrc
echo "Copying .vimrc to $HOME/.ideavimrc"
cp .ideavimrc ~/.ideavimrc
echo "Copying .tmux.conf to $HOME/.tmux.conf"
cp .tmux.conf ~/.tmux.conf

echo "Done"
