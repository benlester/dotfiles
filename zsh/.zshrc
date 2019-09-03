# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR='vim'

ZSH_THEME="candy"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git brew sublime atom pip pylint python z yarn tmux vundle)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin" # postgres
export PATH="$PATH:/usr/local/mysql/bin" # mysql
export PATH="$PATH:`yarn global bin`" # yarn
export PATH="$PATH:/Users/benjaminlester/anaconda3/bin" # python/anaconda
export PATH="$PATH:$HOME/.rvm/bin" # ruby

alias o="open"
alias zshconfig="o ~/.zshrc"
alias pip="~/anaconda3/bin/pip"
alias python="python3"
alias vim="/usr/local/bin/vim" # only needed for brew vim OSX
