#!/bin/bash

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
