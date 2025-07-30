#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mermaid/README.md
# brew install mermaid-cli # deprecated https://github.com/mermaid-js/mermaid-cli/tree/master?tab=readme-ov-file#install-with-brew
stow --no-folding mermaid
