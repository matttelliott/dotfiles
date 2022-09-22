#!/usr/bin/env bash
echo "Setup Zsh"
chsh -s /bin/zsh
cd $HOME/dotfiles
stow zsh
cd $HOME
for file in zlogin zlogout zpreztorc zprofile zshenv zshrc
do
  ln -s -f ".zprezto/runcoms/$file" $HOME/.$file;
done
