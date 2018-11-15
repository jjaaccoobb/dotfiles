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
alias g=git
alias cfg=config
alias lvdsoff="xrandr --output LVDS-1 --off"
alias hdmioff="xrandr --output HDMI-1 --off"
alias vgaoff="xrandr --output VGA-1 --off"


cfgadd () {
  cd ~
  config add $(config status | grep modified | sed 's/\(.*modified:\s*\)//')
  config commit -m "automated commit from zshrc"
  config push origin master
}

commands () {
  cd ~
  awk '{$1=""; print}' < history | sort | uniq -u
}
NEWLINE=$'\n'
PS1="$PS1$NEWLINE$ "
