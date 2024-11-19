#!/usr/bin/env bash
cd "$HOME/dotfiles"

brew install --cask font-inconsolata || true
brew install --cask font-hack-nerd-font || true
brew install --cask font-dejavu-sans-mono-for-powerline || true
brew install --cask font-dejavu-sans-mono-nerd-font || true
brew install --cask font-hack-nerd-font || true
brew install --cask font-awesome-terminal-fonts || true
brew install --cask font-fontawesome || true

stow --no-folding fonts
cp $HOME/.local/share/fonts/* /Library/Fonts/
fc-cache -f -v
