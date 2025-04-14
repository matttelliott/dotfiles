#!/usr/bin/env bash
# https://github.com/unixorn/awesome-zsh-plugins
cd "$HOME/dotfiles"
cat zsh/README.md
rm -rf $HOME/.zshenv
rm -rf $HOME/.zshrc
stow --no-folding zsh
