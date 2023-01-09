#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lg_ares_cli/README.md
stow lg_ares_cli
npm uninstall -g @webosose/ares-cli
ares_path=$HOME/lg-webos-cli/bin
archive_path=$HOME/Downloads/webOS_TV_CLI_mac_1.12.3-j26.tgz
cd $HOME/Downloads
open $archive_path
mkdir -pv $ares_path
echo $ares_path
ls CLI/bin
mv CLI/bin $ares_path

