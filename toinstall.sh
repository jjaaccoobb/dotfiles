#!/bin/bash

mkdir -p ~/.vim/autoload
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
cd ../autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# base packages
sudo apt install i3 xinit firefox chromium-browser virtualbox nginx tmux docker docker-compose ruby anki notify-osd
android-tools-adb htop composer mysql-client ntp scrot tree nodejs texlive-full ffmpeg vim
youtube-dl gthumb qbittorrent mpv pavucontrol fdupes hsetroot compton compton-conf nethogs iotop
iptraf xfonts-terminus fonts-freefont-ttf texlive-full curl zsh fonts-powerline python-pip cmake
pkg-config libcairo2-dev libxcb-randr0-dev xcb-proto libxcb-ewmh2 cmake -y

# cron jobs
# TODO this wil fail
echo 0 */12 * * * cd /opt/stevenblack_hosts && sudo python3 updateHostsFile.py -b -a
--flush-dns-cache  -e gambling porn social fakenews >> /var/spool/cron/crontabs/jacob
echo 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/ >> /var/spool/cron/crontabs/jacob
# //

## Manual installs
cd /opt
sudo chown jacob:jacob ../opt
# .NET

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1 -y

# //

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="cloud"/g' ~/.zshrc
# //

# spotify
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client -y
# //

# devilbox
git clone https://github.com/cytopia/devilbox
cd devilbox
cp env-example .env
echo "NEW_UID=$(id -u)" >> .env
echo "NEW_GID=$(id -g)" >> .env
echo "MOUNT_OPTIONS=,z" >> .env

# //

# stevenpipblack/hosts
git clone https://github.com/StevenBlack/hosts.git
cd stevenblack-hosts
sudo python3 updateHostsFile.py -b -a --flush-dns-cache -e gambling porn social fakenews
# //

# ... more apps

# copy confs


