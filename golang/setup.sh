#!/usr/bin/env bsh
cd $HOME/dotfiles
asdf plugin add golang https://github.com/asdf-community/asdf-golang
asdf install golang latest
asdf global golang latest
asdf shell golang latest
stow --no-folding golang
