#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat rtx-cli/README.md
cargo install rtx-cli
stow rtx-cli

let rtxpath = $"($nu.config-path | path dirname | path join "rtx.nu")";
run-external rtx activate nu --redirect-stdout | save $rtxpath -f;
let newline = $"\nconst rtxPath = "($rtxpath)""
$newline | save $nu.env-path --append
