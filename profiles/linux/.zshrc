# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/usr/bin/vendor_perl

alias c='clear'
alias ll='ls -lahG'
alias nt='nosetests -x --nocapture'
alias pss='ps aux'

alias be='bundle exec'
alias ss='bundle exec trinidad'
alias sc='bundle exec rails console'
alias cuke='bundle exec cucumber'
alias g='git'
alias glog='git log --oneline'
alias ghist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gitbump='git commit --amend -C HEAD'
alias wm='sudo wifi-menu'

export LANG=en_US.UTF-8
export LOCALE=UTF-8
export TERM=xterm

# Setting up the VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip-downloads

if [[ -r /usr/bin/virtualenvwrapper_lazy.sh ]]; then
     source /usr/bin/virtualenvwrapper_lazy.sh
else
     echo "WARNING: Can't find virtualenvwrapper.sh"
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
