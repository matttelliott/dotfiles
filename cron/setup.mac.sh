#!/usr/bin/env bash
cd "$HOME/dotfiles/"
bat cron/README.md
crontab dotfiles/cron/tabs/crontab.macbook
