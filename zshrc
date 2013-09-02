# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(extract git git-flow vi-mode history-substring-search rake brew osx vagrant tmux)

source $ZSH/oh-my-zsh.sh

eval `dircolors ~/.dir_colors`

# Customize to your needs...
export PATH=$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH

export VIRTUAL_ENV_DISABLE_PROMPT=true

. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export TERM=xterm-256color

alias tmux='tmux -2'
alias v='vim'
alias m='mc'
alias c='cd'
alias co='git checkout'
alias up='git up'
alias push='git push'
alias add='git add .'
alias com='git commit -am'
alias g='git'
alias gf='git flow'
alias status='git status'
alias gs='git status'
alias feature='git flow feature'
alias hotfix='git flow hotfix'
alias fstart='git flow feature start'
alias ffinish='git flow feature finish'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'

