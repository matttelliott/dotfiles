#!/usr/bin/env bash
cd "$HOME/dotfiles/"
bat cron/README.md
stow cron
crontab cron/tabs/crontab.macbook
