#!/usr/bin/env zsh
# Download Znap, if it's not there yet.
znapFolder=$HOME/zsh/zsh-snap/
[[ -f $znapFolder/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $znapFolder
source ~/.zsh-plugins/zsh-snap/znap.zsh

# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
# source ~/.zsh_module_* # not working? only runs .zsh_module_aliases?
# ls -lash | grep .zsh_module_ | xargs source
# source ~/.zsh_module_nodejs
# source ~/.zsh_module_exa
for file in `ls -a | grep .zsh_module_`; do
  source $file;
done;
