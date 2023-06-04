#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat rtx-cli/README.md
cargo binstall rtx-cli -y
stow rtx-cli

do {
  let rtxpath = $"($nu.config-path | path dirname | path join "rtx.nu")";
  rm $rtxpath
  run-external rtx activate nu --redirect-stdout | save $rtxpath -f;
  $"\nsource "($rtxpath)"" | save $nu.config-path --append
}