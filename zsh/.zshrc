#!/usr/bin/env zsh
#
# source "$HOME/.cargo/env"
# export PATH=$PATH:$HOME/.cargo/bin


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



# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/matt/.local/share/rtx/installs/python/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/matt/.local/share/rtx/installs/python/mambaforge/etc/profile.d/conda.sh" ]; then
#         . "/Users/matt/.local/share/rtx/installs/python/mambaforge/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/matt/.local/share/rtx/installs/python/mambaforge/bin:$PATH"
#     fi
# fi
# unset __conda_setup
#
# if [ -f "/Users/matt/.local/share/rtx/installs/python/mambaforge/etc/profile.d/mamba.sh" ]; then
#     . "/Users/matt/.local/share/rtx/installs/python/mambaforge/etc/profile.d/mamba.sh"
# fi
# # <<< conda initialize <<<

# export RTX_HIDE_OUTDATED_BUILD=1
# export __RTX_HIDE_OUTDATED_BUILD=1


# Load Angular CLI autocompletion.
# source <(ng completion script)
