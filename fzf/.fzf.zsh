# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/Matt.Elliott/.local/share/nvim/site/pack/packer/start/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/Matt.Elliott/.local/share/nvim/site/pack/packer/start/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/Matt.Elliott/.local/share/nvim/site/pack/packer/start/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/Matt.Elliott/.local/share/nvim/site/pack/packer/start/fzf/shell/key-bindings.zsh"
