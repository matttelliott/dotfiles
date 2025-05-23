#!/usr/bin/env bash
cd "$HOME/dotfiles"

cat fonts/README.md
brew install --cask font-inconsolata
brew install --cask font-hack-nerd-font
brew install --cask font-dejavu-sans-mono-for-powerline
brew install --cask font-dejavu-sans-mono-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-awesome-terminal-fonts
brew install --cask font-fontawesome

stow --no-folding fonts
cp $HOME/.local/share/fonts/* /Library/Fonts/
# fc-cache -f -v
