#!/usr/bin/env zsh
# Download Znap, if it's not there yet.
znapFolder=$HOME/zsh/zsh-snap/
[[ -f $znapFolder/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $znapFolder
source $znapFolder/znap.zsh

# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

for file in `ls -a $HOME | grep .zsh_module_`; do
  source $HOME/$file;
done;

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
