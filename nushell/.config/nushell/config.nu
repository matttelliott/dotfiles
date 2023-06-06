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

alias gg = lazygit

alias gstatus = git status
alias gst = git status
alias gs = git status
alias g = git status

alias gadd = git add
alias ga = git add

alias gcommit = git commit
alias gc = git commit

alias gcheckout = git checkout
alias gco = git checkout
alias gcom = git checkout master
alias gcot = git checkout trunk

alias gmerge = git merge
alias gm = git merge

alias gdiff = git diff
alias gd = git diff
alias gdfiles = git diff --name-only
alias gdf = git diff --name-only

alias gac = git add . ; git commit

def gacm [message] {
    git add . ;
    git commit -m $message ;
  }
alias gacm = gacm

alias gacmp = gacm ; git push

alias gpull = git pull
alias gp = git pull

alias gpush = git push
alias gPush = git push
alias gP = git push

alias gfetch = git fetch
alias gf = git fetch

alias glog = git log --oneline --graph --decorate
alias glg = git log --oneline --graph --decorate
alias gl = git log --oneline --graph --decorate

source "/home/matt/dotfiles/nushell/.config/nushell/rtx.nu"
