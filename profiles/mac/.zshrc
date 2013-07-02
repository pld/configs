skip_global_compinit=1
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
plugins=(bundler, python, rvm, brew, jruby, pip, rails, git, ruby, py)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias ll='ls -lahG'
alias pss="ps aux"

alias be='bundle exec'
alias ss='bundle exec trinidad'
alias sc='bundle exec rails console'
alias cuke='bundle exec cucumber'
alias code='cd $CODE_DIR'
alias g='git'
alias glog='git log --oneline'
alias ghist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gitbump='git commit --amend -C HEAD'

# This assumes Git was installed by Homebrew to /usr/local:
#source /usr/local/etc/bash_completion.d/*

export USR_LOCAL_HOME=/usr/local/bin
export JAVA_HOME=/Library/Java/Home
export MYSQL_HOME=/usr/local/mysql/bin
export PATH=/usr/local/share/python:$HOME/local/bin:$JAVA_HOME/bin:$MYSQL_HOME:$JRUBY_HOME:$GEMS_HOME:$USR_LOCAL_HOME:$PATH

# Keep a longer command history and ignore duplicate entries
export HISTFILESIZE=5000
export HISTCONTROL=ignoredups:erasedups

export JAVA_OPTS='-Xmx2048m -Xms512m -XX:MaxPermSize=512m -d64 -server'

# Helper functions to run Jasmine Javascript tests and spoof ads

# puts current branch in clipboard
function cpbranch() {
   git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy
}

# puts empty commit message in clipboard, assuming 12345678_feature_branch_title
# branch name format some engineers like to use. Replace XX with your initials.
function cpmsg() {
    echo [#`git rev-parse --abbrev-ref HEAD | cut -d'_' -f 1`] XX: | tr -d '\n' | pbcopy
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Setting up the VirtualEnv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip-downloads

if [[ -r /usr/local/share/python/virtualenvwrapper.sh ]]; then
     source /usr/local/share/python/virtualenvwrapper.sh
else
     echo "WARNING: Can't find virtualenvwrapper.sh"
fi
