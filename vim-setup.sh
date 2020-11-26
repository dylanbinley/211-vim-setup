#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

#install necessary tools
sudo apt-get update
sudo apt -y install build-essential cmake python3-dev vim 

#copy over configuration files
cp ./.ycm_extra_conf.py ~/.ycm_extra_conf.py
cp ./.vimrc-final-with-ycm ~/.vimrc

#install plugins
mkdir -p ~/.vim
if [ -e ~/.vim/bundle/Vundle.vim ]
then
    echo "Vundle already installed"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
#yes included to skip over unwanted messages in terminal 
yes | vim -c 'PluginInstall' -c 'qa!'

#finish YouCompleteMe installation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
