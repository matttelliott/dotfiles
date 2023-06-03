#!/usr/bin/env bash
cat rtx-cli/README.md
cd "$HOME/dotfiles"
cargo install rtx-cli
eval "$(rtx activate bash)"
echo 'eval "$(rtx activate bash)"' >> ~/.bashrc
stow rtx-cli
