export TERM=xterm-256color
export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR='vim'

ZSH_THEME="candy"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git brew z vundle)

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
alias python3="/Users/benjaminlester/anaconda3/bin/python3"
alias vim="/usr/local/bin/vim" # only needed for brew vim OSX
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/benjaminlester/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/benjaminlester/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/benjaminlester/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/benjaminlester/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
