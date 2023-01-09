#!/usr/bin/env bash
cd "$HOME/dotfiles"
# bat lg_ares_cli/README.md
stow lg_ares_cli
npm uninstall -g @webosose/ares-cli
ares_path=$HOME/lg-webos-cli
cd $HOME/Downloads
archive_path="webOS_TV_CLI_mac_1.12.3-j26.tar"
rm -rf CLI
rm -rf $ares_path
tar -xf $archive_path 
mv CLI/ $ares_path
export PATH=$PATH:$ares_path

