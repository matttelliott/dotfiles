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
	fonts-font-awesome \
    zsh \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libreadline-dev \
    libffi-dev \
    libsqlite3-dev \
    wget \
    libbz2-dev

# Clone Repo
# ===
git clone $REPO $dotfilesRepoDir

# Install Core tools
# ===
cd $dotfilesRepoDir

# Rust
# bash rust/setup.sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.cargo/bin
stow rust



# Terminal environment
# ===
cd $dotfilesRepoDir
bash zsh/setup.sh
sudo chsh -s $(which zsh) $(whoami)
bash fonts/setup.debian.sh
bash prompt/setup.sh
eval "$(starship init bash)"


# RTX Language Manager
bash rtx-cli/setup.sh
eval "$(rtx activate bash)"

# Golang
bash golang/setup.sh
# rtx use --global golang@latest
eval "$(rtx hook-env)"
export PATH=$PATH:$HOME/go/bin
go install github.com/charmbracelet/gum@latest
gum style  --foreground 212 --border-foreground 212 --border double --align center --width 50 --margin "1 2" --padding "2 4" 'Bubble Gum (1¢)' 'So sweet and so fresh!'


# NodeJs
bash nodejs/setup.sh
# rtx use --global nodejs@latest

# Python
bash python/setup.sh
# rtx use --global python@latest
# eval "$(rtx hook-env)"


# bash lua/setup.sh
# bash ruby/setup.sh
# bash php/setup.sh

eval "$(rtx hook-env)"


# Editor
# ===
bash neovim/setup.sh
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin




# Rust CLI Apps
# ===
cd $dotfilesRepoDir
bash bat/setup.sh
alias cat=bat
bash zellij/setup.sh
bash mprocs/setup.sh
bash gitui/setup.sh
bash zoxide/setup.sh
bash lsd/setup.sh
bash exa/setup.sh
bash ripgrep/setup.sh
bash fd/setup.sh
bash sd/setup.sh
bash nushell/setup.rust.sh

# GO CLI Apps
# ===
cd $dotfilesRepoDir
bash fzf/setup.sh
bash lazygit/setup.sh
bash jq/setup.sh
bash gum/setup.sh

# Python CLI Apps
# ===
cd $dotfilesRepoDir
bash youtube-dl/setup.sh

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
# bash nmap/setup.debian.sh
# bash htop/setup.debian.sh
# bash w3m/setup.debian.sh
# bash pandoc/setup.debian.sh
# bash ffmpeg/setup.debian.sh
# bash imagemagick/setup.debian.sh
# bash entr/setup.debian.sh
# bash watch/setup.debian.sh

# Fun
# ===
# bash lolcat/setup.debian.sh
# bash neofetch/setup.debian.sh
# bash cowsay/setup.debian.sh
# bash asciiquarium/setup.debian.sh

# Containers
# ===
# bash vagrant/setup.debian.sh
# bash docker/setup.debian.sh
# bash kubernetes/setup.debian.sh



# Nonfree CLI Tools
# ===
cd $dotfilesRepoDir
# bash github/setup.debian.sh


# FOSS GUI Apps
# ===
cd $dotfilesRepoDir
# bash obsidian/setup.debian.sh
# bash vscodium/setup.debian.sh
# bash mpv/setup.debian.sh
# bash vlc/setup.debian.sh
bash kitty/setup.sh

# Nonfree GUI Apps
# ===
cd $dotfilesRepoDir

# Browsers
# ===
# bash chromium/setup.debian.sh
# bash firefox/setup.debian.sh
# bash vivaldi/setup.debian.sh
# bash opera/setup.debian.sh


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
# 

# bash cron/setup.debian.sh
# bash wget/setup.debian.sh
# bash trash/setup.debian.sh
# bash clipboard/setup.debian.sh
# bash vim/setup.debian.sh
# bash shfmt/setup.debian.sh
# bash iterm/setup.debian.sh
# bash vifm/setup.debian.sh
# 
# bash ranger/setup.debian.sh
# bash bpytop/setup.debian.sh
#
# 
# bash wiki/setup.debian.sh
# 
# bash tf2/setup.debian.sh
# bash steam/setup.debian.sh
# bash spotify/setup.debian.sh
# bash 1password/setup.debian.sh

# Finish
# ===


# neofetch
# cowsay "DONE!"



