#!/usr/bin/env bash
cd "$HOME/dotfiles/"
echo '********************Setup Crontab********************'
bat cron/README.md
stow cron
crontab cron/tabs/crontab.macbook
