let-env PATH = ($env.PATH | split row (char esep) | append $"($env.HOME)/.cargo/bin")
let-env PATH = ($env.PATH | split row (char esep) | append $"($env.HOME)/.local/share/bob/nvim-bin")

let-env STARSHIP_SHELL = "nu"

def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}

# Use nushell functions to define your right and left prompt
let-env PROMPT_COMMAND = { || create_left_prompt }
let-env PROMPT_COMMAND_RIGHT = ""

# The prompt indicators are environmental variables that represent
# the state of the prompt
let-env PROMPT_INDICATOR = ""
let-env PROMPT_INDICATOR_VI_INSERT = ": "
let-env PROMPT_INDICATOR_VI_NORMAL = "〉"
let-env PROMPT_MULTILINE_INDICATOR = "::: "
let-env config = {
    show_banner: false,
}

alias l = ls -lad
alias c = clear
alias e = nvim
alias q = exit

alias g = git status
alias gs = git status
alias gg = lazygit

source "/home/matt/dotfiles/nushell/.config/nushell/rtx.nu"
