#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat ripgrep/README.md
stow ripgrep
brew install ripgrep

#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ripgrep/README.md
stow ripgrep

let title = "ripgrep \n"
let description = " rust based Modern alternative to grep  \n"
let url = "https://github.com/BurntSushi/ripgrep \n"
let color = 14
rtx x golang@latest -- gum style --foreground $color --border-foreground $color --border double --align center --width 50 --margin "1 2" --padding "2 4" $title $description $url

cargo install ripgrep
