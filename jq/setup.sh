#!/usr/bin/env bash
cd $HOME/dotfiles
go install github.com/itchyny/gojq/cmd/gojq@latest
stow jq
