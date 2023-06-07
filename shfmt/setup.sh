#!/usr/bin/env bash
cd "$HOME/dotfiles"
go install mvdan.cc/sh/v3/cmd/shfmt@latest
stow shfmt