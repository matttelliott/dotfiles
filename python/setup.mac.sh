#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat python/README.md
brew install python3

pip3 install --upgrade pip
pip3 install virtualenv
pip3 install setuptools
pip3 install wheel

# /opt/homebrew/Cellar/neovim/0.8.0/share/nvim/runtime/doc/provider.txt
# Note: The old "neovim" module was renamed to "pynvim".
# https://github.com/neovim/neovim/wiki/Following-HEAD#20181118
# If you run into problems, uninstall _both_ then install "pynvim" again: >
  # python -m pip uninstall neovim pynvim
  # python -m pip install --user --upgrade pynvim
#pip3 install neovim
pip3 install pynvim
pip3 install black
pip3 install flake8
stow python

cd "$HOME"
python3 -m venv python-neovim
cd python-neovim
source bin/activate
pip install pynvim
pip install black
pip install flake8
