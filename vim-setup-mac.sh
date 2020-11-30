#!/bin/sh -eux

#install necessary tools
brew install cmake python vim 

#copy over configuration files
cp ./.ycm_extra_conf.py ~/.ycm_extra_conf.py #highlighting for compiler errors, etc 
cp ./.vimrc-final-with-ycm ~/.vimrc

#install Vundle 
mkdir -p ~/.vim
if [ -e ~/.vim/bundle/Vundle.vim ]
then
    echo "Vundle already installed"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
#newline passed in to skip over unwanted vim error message
echo | vim -c 'PluginInstall' -c 'qa!'

#finish YouCompleteMe installation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
