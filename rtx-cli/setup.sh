#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install rtx-cli
eval "$(rtx activate bash)"
echo 'eval "$(rtx activate bash)"' >> ~/.bashrc
echo 'eval "$(rtx activate zsh)"' >> ~/.zshrc

stow rtx-cli
