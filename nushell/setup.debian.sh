#!/usr/bin/env bash
cat nushell/README.md
cd "$HOME/dotfiles"
cargo install coreutils
cargo install nu
stow nushell
nupath=which nu 
sudo echo $nupath >> /etc/shells
chsh -s $nupath
