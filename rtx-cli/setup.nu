#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat rtx-cli/README.md
cargo install rtx-cli
stow --no-folding rtx-cli

let rtxpath = ($env.HOME | path join ".config/nushell/rtx.nu");
run-external rtx activate nu --redirect-stdout | save $rtxpath -f;
let newline = $"\nconst rtxPath = "($rtxpath)""
$newline | save $nu.env-path --append
