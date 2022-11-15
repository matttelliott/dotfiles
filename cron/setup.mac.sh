#!/usr/bin/env bash
cd "$HOME/dotfiles/"
bat cron/README.md
isMattsMacbook=$(hostname | grep -i matt | grep -i macbook)
isMattsChromebook=$(hostname | grep -i matt | grep -i chromebook)
isPlutoMacbook=$(hostname | grep -i plutotv)
if [ $isMattsMacbook != "" ]; then
	crontab cron/tabs/crontab.macbook
elif [ $isMattsChromebook != "" ]; then
	crontab cron/tabs/crontab.chromebook
#elif [ $isPlutoMacbook != "" ]; then
else
	crontab cron/tabs/crontab.plutotv
fi
