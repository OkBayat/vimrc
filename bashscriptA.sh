#!/bin/bash

echo ""
echo "--------------------------------------------------"
echo ">>> Setting vim color them"
echo "--------------------------------------------------"
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
apt-get update
apt-get install zsh
zsh --version
# Making ZSH the Default Shell
usermod -s /usr/bin/zsh $(whoami)
echo "DONE"

echo ""
echo "--------------------------------------------------"
echo ">>> Installing oh-my-zsh"
echo "--------------------------------------------------"
echo "Please run following command and then ruen ./bashscriptB.sh"
echo "sh -c $(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "DONE"
