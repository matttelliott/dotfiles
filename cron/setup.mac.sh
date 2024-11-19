#!/usr/bin/env bash
cd "$HOME/dotfiles/"
cat cron/README.md
crontab cron/tabs/crontab.macbook
