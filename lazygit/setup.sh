#!/usr/bin/env bash
cd "$HOME/dotfiles"

title="lazygit \n"
description="Terminal git client  \n"
url="https://github.com/jesseduffield/lazygit \n"
color=10
gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

go install github.com/jesseduffield/lazygit@latest

stow lazygit
