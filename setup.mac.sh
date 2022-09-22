#!/usr/bin/env bash

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install dependencies rosetta, nix, stow, and git
sudo softwareupdate --install-rosetta --agree-to-license
sh <(curl -L https://nixos.org/nix/install)
export PATH=$PATH:/nix/var/nix/profiles/default/bin
/nix/var/nix/profiles/default/bin/nix-env -i git
/nix/var/nix/profiles/default/bin/nix-env -i stow
# clone main repo
git clone https://gitlab.com/matttelliott/dotfiles-stow.git dotfiles
cd dotfiles
# run setup scripts
bash nix/setup.mac.sh
bash git/setup.mac.sh
bash stow/setup.mac.sh
bash neovim/setup.mac.sh
bash tmux/setup.mac.sh
bash zsh/setup.mac.sh
bash fonts/setup.mac.sh
bash iterm/setup.mac.sh
