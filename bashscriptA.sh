#!/bin/bash

echo ""
echo "--------------------------------------------------"
echo ">>> Setting vim color them"
echo "--------------------------------------------------"
mkdir ~/.vim
mkdir ~/.vim/colors
cp darcula.vim ~/.vim/colors/
echo "DONE"


echo ""
echo "--------------------------------------------------"
echo ">>> Copy .ctags file to root"
echo "--------------------------------------------------"
cp .ctags ~/
echo "DONE"


echo ""
echo "--------------------------------------------------"
echo ">>> Installing zsh"
echo "--------------------------------------------------"
echo "Go to this web page and install it: https://linuxhint.com/install_zsh_shell_ubuntu_1804/"
