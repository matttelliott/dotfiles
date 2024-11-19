#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat wiki/README.md
git clone https://gitlab.com/matttelliott/_wiki_ $HOME/_wiki_
cd $HOME/_wiki_ && . ./sync
stow --no-folding wiki
