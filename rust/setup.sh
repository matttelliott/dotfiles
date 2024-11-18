cd $HOME/dotfiles
asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
asdf install rust latest
asdf global rust latest
asdf shell rust latest
stow --no-folding rust
