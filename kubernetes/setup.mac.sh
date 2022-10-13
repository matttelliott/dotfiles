#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo '********************Setup Kubernetes********************'
bat kubernetes/README.md
brew install kubectl
brew install minikube 
brew install kubernetes-helm

stow kubernetes
