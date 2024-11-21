#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat firefox/README.md
brew install firefox || true
brew install firefox@developer-edition || true
brew install firefox@nightly || true
brew install librewolf --no-quarantine || true # See https://librewolf.net/docs/faq/#why-is-librewolf-marked-as-broken for macos errors with librewolf
stow --no-folding firefox
