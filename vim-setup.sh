#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive
sudo apt install build-essential cmake python3-dev

cp ./.ycm_extra_conf.py ~/.ycm_extra_conf.py
cp ./.vimrc-final-with-ycm ~/.vimrc

mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
