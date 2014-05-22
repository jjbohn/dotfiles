# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias v="vagrant"
alias http="python -m SimpleHTTPServer"
alias c="clear"
alias l="ls -alh"
alias r="rake"

# AWS aliases
alias din="aws ec2 describe-instances --instance-id"
alias das="aws autoscaling describe-auto-scaling-groups --auto-scaling-group"
alias dass="aws autoscaling describe-auto-scaling-groups | grep "
alias dals="aws cloudwatch describe-alarms --alarm-names"
alias dal="aws cloudwatch disable-alarm-actions --alarm-names"
alias eal="aws cloudwatch enable-alarm-actions --alarm-names"
alias tin="aws autoscaling terminate-instance-in-auto-scaling-group --no-should-decrement-desired-capacity --instance-id"
alias tiny="aws autoscaling terminate-instance-in-auto-scaling-group --should-decrement-desired-capacity --instance-id"
alias dlc="aws autoscaling describe-launch-configurations --launch-configuration-name"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew github vagrant heroku ruby rails knife bundler)

source /opt/boxen/env.sh
source ~/.bin/tmuxinator.zsh
source $ZSH/oh-my-zsh.sh

source $ZSH/plugins/history-substring-search/history-substring-search.zsh

# Paths
export GOPATH=$HOME/go
export PATH=/usr/local/heroku/bin:$GOPATH/bin:$PATH
export LIBRARY_PATH=/opt/boxen/homebrew/lib:$LIBRARY_PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR="vim"
export SHELL="zsh"
export TERM="xterm-256color"
alias tmux="tmux -2"
