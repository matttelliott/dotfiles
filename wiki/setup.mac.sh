#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat wiki/README.md
stow --no-folding wiki
git clone https://gitlab.com/matttelliott/_wiki_ $HOME/_wiki_
cd $HOME/_wiki_ && . ./sync
