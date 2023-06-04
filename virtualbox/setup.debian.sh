#!/usr/bin/env bash
cd "$HOME/dotfiles"
title="virtualbox"
description="VirtualBox is an open source x86 emulator"
url="https://www.virtualbox.org/"
color="1"
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" "$title" "$description" "$url"

cat virtualbox/README.md
brew install virtualbox
sudo apt install virtualbox
# sudo apt install virtualbox-ext-pack # optional, proprietary
stow virtualbox
