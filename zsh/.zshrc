# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source Promptline.
# if [[ -s "${ZDOTDIR:-$HOME}/.promptline.sh" ]]; then
  # source "${ZDOTDIR:-$HOME}/.promptline.sh"
# fi

# set PATH so it includes npm bin if it exists
if [ -d "$HOME/.npm-packages/bin" ] ; then
    PATH="$HOME/.npm-packages/bin:$PATH"
fi

# set PATH so it includes rust bin if it exists
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
    . "$HOME/.cargo/env"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#
# Add rubygems to the path
export PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH
# or
export PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH

alias e="$EDITOR"
alias c=clear
alias l=ll
alias br="bulk-rename"
alias ys="yadm status"
alias ya="yadm add"
alias yaa="yadm status -s | awk '{print \$2}' | xargs yadm add"
alias yc="yadm commit"
alias yd="yadm diff"
alias ydiff="yadm diff"
alias ypush="yadm push"
alias ypull="yadm pull"
alias gs="git status"
alias g="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gdiff="git diff"
alias gac="git add . && git commit"
alias gacm="git add . && git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias pword='echo $(LC_CTYPE=C tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= < /dev/urandom | head -c 32 | xargs)'
alias chromium-no-cors='open -n -a /Applications/Chromium.app/Contents/MacOS/Chromium --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security'
alias stray_port="lsof -i :"
alias napster='youtube-dl -x --audio-format=mp3'

function h() {
  curl "cheat.sh/$1"
}

if ! command -v pbcopy > /dev/null; then
  alias pbcopy="xclip -selection clipboard"
fi

if ! command -v pbpaste > /dev/null; then
  alias pbpaste="xclip -o -selection clipboard"
fi

# if ! command -v postman > /dev/null; then
#   alias postman="flatpak run com.getpostman.Postman"
# fi

# print outstanding dotfiles changes
function ycheck() {
  if (( $(yadm status | grep 'Change\|ahead\|behind' | wc -l) > 0 )); then yadm status -v; fi
  echo "use ypushauto to commit and push modified files"
  echo "~/.zshrc#ypush"
}
function ypushauto() {
  ys | ag modified | awk '{ print $2 }' | xargs yadm add 
  yadm commit -m 'autocommit'
  yadm push
}

# bind caps to ctrl
if command -v setxkbmap > /dev/null; then
  setxkbmap -option caps:ctrl_modifier
fi

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/tmp/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 1/5 chance to check for dotfiles changes and echo status
# if [ $( grep -m1 -ao '[0-4]' /dev/urandom | sed s/0/10/ | head -n1 ) -eq 10 ]; then ycheck; fi
# 2022-02-07 disabled in favor of cron

# source <(kubectl completion zsh)

# eval "$(rbenv init -)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

