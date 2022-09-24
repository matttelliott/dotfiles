#!/usr/bin/env bash
cd "$HOME/dotfiles"
stow fonts

brew tap homebrew/cask-fonts

brew install font-dejavu-sans-mono-for-powerline
brew install font-dejavu-sans-mono-nerd-font
brew install font-hack-nerd-font
brew install font-awesome-terminal-fonts
brew install font-fontawesome

cp $HOME/.local/share/fonts/* /Library/Fonts/
fc-cache -f -v
