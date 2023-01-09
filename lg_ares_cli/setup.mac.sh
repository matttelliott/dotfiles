#!/usr/bin/env bash
cd "$HOME/dotfiles"
# bat lg_ares_cli/README.md
stow lg_ares_cli
npm uninstall -g @webosose/ares-cli
ares_path=$HOME/lg-webos-cli
archive_path=$HOME/Downloads/webOS_TV_CLI_mac_1.12.3-j26.tgz
cd $HOME/Downloads
rm -rf CLI
rm -rf $ares_path
tar -zxvf $archive_path && mv CLI/ $ares_path

