#!/bin/bash

echo ""
echo "--------------------------------------------------"
echo ">>> Installing other requirements"
echo "--------------------------------------------------"
# Installing Powerline and Powerline Fonts for ZSH
apt-get install powerline fonts-powerline
# Enable Syntax Highlighting on ZSH Shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
sed -i "s/ZSH_THEME/# ZSH_THEME/" ~/.zshrc
echo 'ZSH_THEME="af-magic"' >> ~/.zshrc
echo "DONE
