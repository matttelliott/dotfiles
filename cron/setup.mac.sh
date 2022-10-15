#!/usr/bin/env bash
cd "$HOME/dotfiles/"
bat cron/README.md
#crontab cron/tabs/crontab.macbook
echo '$HOST'
echo $HOST
hostname=$(echo $HOST | grep -i matt | grep -i macbook)
echo $hostname
