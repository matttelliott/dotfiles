# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/matt/.local/share/nvim/site/pack/packer/start/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/matt/.local/share/nvim/site/pack/packer/start/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/matt/.local/share/nvim/site/pack/packer/start/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/matt/.local/share/nvim/site/pack/packer/start/fzf/shell/key-bindings.zsh"
