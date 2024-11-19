#!/usr/bin/env bash
echo 'kubernetes/setup.mac.sh'
cd "$HOME/dotfiles"
cat kubernetes/README.md
brew install kubectl || true
brew install minikube  || true
brew install kubernetes-helm || true

stow --no-folding kubernetes
