#!/usr/bin/env bash

# check environment and set global env var
if [[ -n $(cat /etc/issue | grep -i debian) ]]; then
  echo 'debian dotfiles setup';
else
  echo 'Error: Running debian dotfiles setup on non-debian device.';
  exit 1
fi


REPO=https://gitlab.com/matttelliott/dotfiles-stow
# curl $REPO/-/raw/master/WARNING.md | cat

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"
# sleep 10


# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do
	sudo -n true
	sleep 60
	kill -0 "$$" || exit
done 2>/dev/null &


sudo apt update -y
sudo apt upgrade -y


sudo apt install -y git
sudo apt install -y stow
sudo apt install -y curl
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libssl-dev
sudo apt install -y cmake

date=$(date -I seconds)
mv $HOME/dotfiles $HOME/dotfiles-$date
mv $HOME/.local $HOME/.local-$date
mv $HOME/.config $HOME/.config-$date
mv $HOME/.profile $HOME/.profile-$date
for file in $(ls -lash | awk '{ print $10 }' | grep '^.z' | grep -v '\d\d\d\d-\d\d-\d\d'); do
	mv $HOME/$file $HOME/$file-$date
done
for file in $(ls -lash | awk '{ print $10 }' | grep '^.bash' | grep -v '\d\d\d\d-\d\d-\d\d'); do
	mv $HOME/$file $HOME/$file-$date
done
git clone $REPO $HOME/dotfiles
cd $HOME/dotfiles

# Rust core tools
bash rust/setup.debian.sh
source "$HOME/.cargo/env"
export RUSTC_WRAPPER=sccache cargo install {package}

bash nushell/setup.rust.sh
nupath=`which nu`
echo $nupath | sudo tee -a /etc/shells
sudo chsh -s $(which nu) $(whoami)

nu bat/setup.nu
nu gitui/setup.nu
nu zoxide/setup.nu

nu rtx-cli/setup.nu
rtx hook-env

nu nodejs/setup.nu
bash prompt/setup.rust.sh
# Rust terminal environment

#bash zellij/setup.rust.sh
#bash mprocs/setup.rust.sh
#bash neovim/setup.rust.sh

# Rust CLI Apps

#bash lsd/setup.rust.sh
#bash ripgrep/setup.rust.sh
#bash fd/setup.rust.sh
#bash sd/setup.rust.sh
#bash kondo/setup.rust.sh

# bash git/setup.debian.sh
# bash svn/setup.debian.sh
# bash stow/setup.debian.sh
# bash zsh/setup.debian.sh
#bash fonts/setup.debian.sh
#bash cron/setup.debian.sh
#bash bin/setup.debian.sh

#bash fzf/setup.debian.sh
#bash wget/setup.debian.sh
#bash trash/setup.debian.sh
#bash clipboard/setup.debian.sh
#bash vim/setup.debian.sh
#bash neofetch/setup.debian.sh
#bash cowsay/setup.debian.sh
#bash github/setup.debian.sh

#bash python/setup.debian.sh
#bash lua/setup.debian.sh
#bash ruby/setup.debian.sh
#bash golang/setup.debian.sh
#bash php/setup.debian.sh
#bash shfmt/setup.debian.sh

#bash sqlite/setup.debian.sh
#bash postgres/setup.debian.sh

#bash mac/setup.debian.sh
#bash iterm/setup.debian.sh
#bash 1password/setup.debian.sh
#bash spectacle/setup.debian.sh

#bash asciiquarium/setup.debian.sh
#bash entr/setup.debian.sh
#bash lazygit/setup.debian.sh
#bash vifm/setup.debian.sh
#bash htop/setup.debian.sh
#bash jq/setup.debian.sh
#bash pandoc/setup.debian.sh
#bash w3m/setup.debian.sh
#bash watch/setup.debian.sh
#bash youtube-dl/setup.debian.sh
#bash ffmpeg/setup.debian.sh
#bash imagemagick/setup.debian.sh
#bash ranger/setup.debian.sh
#bash nmap/setup.debian.sh
#bash bpytop/setup.debian.sh
#bash lolcat/setup.debian.sh

#bash mpv/setup.debian.sh
#bash vlc/setup.debian.sh
#bash obsidian/setup.debian.sh
#bash vscodium/setup.debian.sh

#bash chromium/setup.debian.sh
#bash firefox/setup.debian.sh
#bash vivaldi/setup.debian.sh
#bash opera/setup.debian.sh

#bash virtualbox/setup.debian.sh
#bash vagrant/setup.debian.sh
#bash docker/setup.debian.sh
#bash kubernetes/setup.debian.sh

#neofetch
#cowsay "DONE!"
#sleep 15

## Manual Install
# bash julia/setup.debian.sh
# bash wiki/setup.debian.sh
# bash tf2/setup.debian.sh
# bash spotify/setup.debian.sh
