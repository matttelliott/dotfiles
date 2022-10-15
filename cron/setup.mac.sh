#!/usr/bin/env bash
cd "$HOME/dotfiles/"
bat cron/README.md
isMattsMacbook=$(hostname | grep -i matt | grep -i macbook)
isMattsChromebook=$(hostname | grep -i matt | grep -i chromebook)
isPlutoMacbook=$(hostname | grep -i plutotv)
echo $isMattsMacbook
echo $isMattsChromebook
echo $isPlutoMacbook
if [ $isMattsMacbook != "" ]; then
	echo $isMattsChromebook
	crontab cron/tabs/crontab.macbook
elif [ $isMattsChromebook != "" ]; then
	echo $isMattsChromebook
	crontab cron/tabs/crontab.chromebook
elif [ $isPlutoMacbook != "" ]; then
	echo $isPlutoMacbook
	crontab cron/tabs/crontab.pluto
fi
