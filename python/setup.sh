#!/usr/bin/env bash
cd $HOME/dotfiles
asdf plugin add python https://github.com/asdf-community/asdf-python
asdf install python latest
asdf global python latest
asdf shell python latest
stow --no-folding python
