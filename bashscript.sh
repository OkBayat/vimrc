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
sh oh-my-zsh.sh
echo "DONE"


echo ""
echo "--------------------------------------------------"
echo ">>> Installing other requirements"
echo "--------------------------------------------------"
# Installing Powerline and Powerline Fonts for ZSH
apt-get install powerline fonts-powerline
# Enable Syntax Highlighting on ZSH Shell
apt-get install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
sed -i "s/ZSH_THEME/# ZSH_THEME/" ~/.zshrc
echo 'ZSH_THEME="af-magic"' >> ~/.zshrc
echo "DONE
