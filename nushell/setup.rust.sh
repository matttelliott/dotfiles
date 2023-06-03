#!/usr/bin/env bash
cat nushell/README.md
cd "$HOME/dotfiles"
cargo install nu
stow nushell
nupath=`which nu`
echo $nupath | sudo tee -a /etc/shells
chsh -s $nupath
