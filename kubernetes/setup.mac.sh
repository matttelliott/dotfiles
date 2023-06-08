#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat kubernetes/README.md
brew install kubectl
brew install minikube 
brew install kubernetes-helm

stow --no-folding kubernetes
