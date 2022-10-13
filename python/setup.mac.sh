#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Python********************"
bat python/README.md
brew install python3
pip3 install --upgrade pip
pip3 install virtualenv
pip3 install setuptools
pip3 install wheel
pip3 install neovim
pip3 install pynvim
pip3 install black
pip3 install flake8
stow python
