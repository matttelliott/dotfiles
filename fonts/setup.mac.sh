#!/usr/bin/env bash
brew install font-dejavu-sans-mono-for-powerline
brew install font-dejavu-sans-mono-nerd-font
brew install font-awesome-terminal-fonts
brew install font-fontawesome

cp $HOME/.local/share/fonts/* /Library/Fonts 
fc-cache -f -v
