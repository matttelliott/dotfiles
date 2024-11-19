#!/usr/bin/env bash
echo 'kubernetes/setup.mac.sh'
cd "$HOME/dotfiles"
cat kubernetes/README.md
brew install kubectl
brew install minikube 
brew install kubernetes-helm

stow --no-folding kubernetes
