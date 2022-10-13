#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo '********************Setup VirtualBox********************'
bat virtualbox/README.md
brew install virtualbox
stow virtualbox
