#!/usr/bin/env zsh
#

for file in `ls -a $HOME/.zsh_modules`; do
  source $HOME/.zsh_modules/$file;
done;

# Download Znap, if it's not there yet.
znapFolder=$HOME/zsh/zsh-snap/
[[ -f $znapFolder/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $znapFolder
source $znapFolder/znap.zsh




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


