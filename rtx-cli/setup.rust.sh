#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat rtx-cli/README.md
cargo install rtx-cli
eval "$(rtx activate bash)"
echo 'eval "$(rtx activate bash)"' >> ~/.bashrc
stow rtx-cli
