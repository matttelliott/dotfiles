#!/usr/bin/env bash
# 
# This script requires a user with sudo priviliges to set up dependencies with apt
#
# to add a user to sudo on debian
# ```bash
# su -
# apt install sudo
# usermod -aG sudo <username>
# ```
# then reboot

dotfilesRepoDir="$HOME/dotfiles"

# check environment and set global env var
if [[ -n $(cat /etc/issue | grep -i debian) ]]; then
  echo 'debian dotfiles setup';
else
  echo 'Error: Running debian dotfiles setup on non-debian device.';
  exit 1
fi


REPO=https://gitlab.com/matttelliott/dotfiles-stow
# curl $REPO/-/raw/master/WARNING.md | cat


# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do
	sudo -n true
	sleep 60
	kill -0 "$$" || exit
done 2>/dev/null &



# Backup files
# ===
cd "$HOME"

date=$(date --iso-8601=seconds)
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



# Install updates
# ===
sudo apt update -y
sudo apt upgrade -y

# Install Core dependencies
# ===
sudo apt install -y \
	git \
	stow \
	curl \
	build-essential \
	pkg-config \
	libssl-dev \
	cmake \
  xclip \
	fonts-dejavu \
	fonts-powerline \
	fonts-font-awesome


# Clone Repo
# ===
git clone $REPO $HOME/dotfiles
cd $dotfilesRepoDir



# Install Core tools
# ===
cd $dotfilesRepoDir

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.cargo/bin

# RTX Language Manager
cargo install rtx-cli
eval "$(rtx activate bash)"

# Golang
rtx use --global golang@latest
eval "$(rtx hook-env)"
go install github.com/charmbracelet/gum@latest
gum style  --foreground 212 --border-foreground 212 --border double --align center --width 50 --margin "1 2" --padding "2 4" 'Bubble Gum (1¢)' 'So sweet and so fresh!'

# NodeJs
rtx use --global nodejs@latest
eval "$(rtx hook-env)"
npm i -g prettier

# Python
# rtx use --global python@latest
# eval "$(rtx hook-env)"

# bash rust/setup.debian.sh

# NuShell
# ===
cd $dotfilesRepoDir
# bash nushell/setup.rust.sh

# Set as default shell
# which nu | sudo tee -a /etc/shells
# sudo chsh -s $(which nu) $(whoami)

# Language Version Manager
# ===
cd $dotfilesRepoDir
# nu rtx-cli/setup.nu
# bash rtx-cli/setup.rust.sh

# GO core tools
# ===
cd $dotfilesRepoDir
# nu golang/setup.nu
# nu gum/setup.nu

# Other Languages
# ===
cd $dotfilesRepoDir

# nu nodejs/setup.nu
# bash python/setup.debian.sh
# bash lua/setup.debian.sh
# bash ruby/setup.debian.sh
# bash php/setup.debian.sh



# Terminal environment
# ===
cd $dotfilesRepoDir

bash neovim/setup.rust.sh
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin

bash prompt/setup.sh
eval "$(starship init bash)"

bash zellij/setup.sh
bash mprocs/setup.sh

bash fonts/setup.debian.sh

# Rust CLI Apps
# ===
cd $dotfilesRepoDir
bash bat/setup.sh
alias cat=bat
bash gitui/setup.sh
bash zoxide/setup.sh
bash lsd/setup.sh
bash exa/setup.sh
bash ripgrep/setup.sh
bash fd/setup.sh
bash sd/setup.sh

# GO CLI Apps
# ===
cd $dotfilesRepoDir
# bash fzf/setup.debian.sh
# bash lazygit/setup.debian.sh


# Python CLI Apps
# ===
cd $dotfilesRepoDir


# Databases
# ===
cd $dotfilesRepoDir
# bash sqlite/setup.debian.sh
# bash postgres/setup.debian.sh

# My CLI Apps
# ===
cd $dotfilesRepoDir
# bash bin/setup.debian.sh


# FOSS CLI Tools
# ===
cd $dotfilesRepoDir
# bash git/setup.debian.sh
# bash svn/setup.debian.sh
# bash stow/setup.debian.sh

# Nonfree CLI Tools
# ===
cd $dotfilesRepoDir


# FOSS GUI Apps
# ===
cd $dotfilesRepoDir
# bash obsidian/setup.debian.sh
# bash vscodium/setup.debian.sh
# nu kitty/setup.nu

# Nonfree GUI Apps
# ===
cd $dotfilesRepoDir
# Skip for VM
# ---

# nonfreeSource="deb http://deb.debian.org/debian/ sid main contrib non-free non-free-firmware"
# echo $nonfreeSource | sudo tee -a /etc/apt/sources.list
# sudo apt update -y
# sudo apt upgrade -y


# bash virtualbox/setup.debian.sh

# Nvidia Drivers
# sudo apt install -y nvidia-driver firmware-misc-nonfree


# Other/TODO
# ===
cd $dotfilesRepoDir

# bash zsh/setup.debian.sh
# bash cron/setup.debian.sh
# bash wget/setup.debian.sh
# bash trash/setup.debian.sh
# bash clipboard/setup.debian.sh
# bash vim/setup.debian.sh
# bash neofetch/setup.debian.sh
# bash cowsay/setup.debian.sh
# bash github/setup.debian.sh
# bash shfmt/setup.debian.sh
# bash iterm/setup.debian.sh
# bash 1password/setup.debian.sh
# bash spectacle/setup.debian.sh
# bash asciiquarium/setup.debian.sh
# bash entr/setup.debian.sh
# bash vifm/setup.debian.sh
# bash htop/setup.debian.sh
# bash jq/setup.debian.sh
# bash pandoc/setup.debian.sh
# bash w3m/setup.debian.sh
# bash watch/setup.debian.sh
# bash youtube-dl/setup.debian.sh
# bash ffmpeg/setup.debian.sh
# bash imagemagick/setup.debian.sh
# bash ranger/setup.debian.sh
# bash nmap/setup.debian.sh
# bash bpytop/setup.debian.sh
# bash lolcat/setup.debian.sh
# bash mpv/setup.debian.sh
# bash vlc/setup.debian.sh
# bash chromium/setup.debian.sh
# bash firefox/setup.debian.sh
# bash vivaldi/setup.debian.sh
# bash opera/setup.debian.sh
# bash vagrant/setup.debian.sh
# bash docker/setup.debian.sh
# bash kubernetes/setup.debian.sh
# bash julia/setup.debian.sh
# bash wiki/setup.debian.sh
# bash tf2/setup.debian.sh
# bash spotify/setup.debian.sh

# Finish
# ===


# neofetch
# cowsay "DONE!"
# sleep 15



