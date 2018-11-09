export ZSH="/home/jacob/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
alias ls='ls -h --group-directories-first --color'
alias ll='ls -lah --group-directories-first  --color'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias vz='vim ~/.zshrc'
alias dbx='cd /opt/devilbox; sudo service mysql stop; sudo service nginx stop; sudo service docker start; sudo docker-compose up'
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export DISABLE_AUTO_TITLE=true
#cmatrix
