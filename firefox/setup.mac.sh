#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat firefox/README.md
brew install firefox
brew install firefox@developer-edition
brew install firefox@nightly
brew install librewolf # See https://librewolf.net/docs/faq/#why-is-librewolf-marked-as-broken for macos errors with librewolf
stow --no-folding firefox
