#!/usr/bin/env bash
cd "$HOME/dotfiles"
bash svn/setup.mac.sh
cd "$HOME/dotfiles"

cat fonts/README.md
stow fonts

echo "Install Fonts"
sudo apt install -y fonts-dejavu
sudo apt install -y fonts-powerline
sudo apt install -y fonts-font-awesome

pushd $HOME
git clone https://github.com/gabrielelana/awesome-terminal-fonts
cd awesome-terminal-fonts
mkdir -p ~/.fonts
cp -f ./build/*.ttf ~/.fonts
cp -f ./build/*.sh ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
cp -f ./config/* ~/.config/fontconfig/conf.d
fc-cache -fv ~/.fonts
cd ..
rm -rf awesome-terminal-fonts
popd


