#!/usr/bin/env zsh
#
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.cargo/bin


# Download Znap, if it's not there yet.
znapFolder=$HOME/zsh/zsh-snap/
[[ -f $znapFolder/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $znapFolder
source $znapFolder/znap.zsh

for file in `ls -a $HOME/.zsh_modules`; do
  source $HOME/.zsh_modules/$file;
done;


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


