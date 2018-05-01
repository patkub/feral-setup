#!/bin/bash

# colors
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`

print_header() {
  printf "${red}"
  printf '%0.s*' $(seq 1 23)
  printf '\n'
  echo "${red}*     ${green}Feral Setup     ${red}*"
  printf '%0.s*' $(seq 1 23)
  printf '\n'
  echo "${reset}"
}

setup() {
  # initial setup
  echo "${yellow}Creating binary directory${reset}"
  mkdir ~/bin
}

restart_script() {
  # get Feral restart script
  echo "${yellow}Getting Feral restart script${reset}"
  wget -qO ~/bin/restart http://git.io/5Uw8Gw
}

rclone_install() {
  # get rclone
  wget -qO rclone.zip http://downloads.rclone.org/rclone-current-linux-amd64.zip
  unzip rclone.zip
  mv rclone-v*-linux-amd64/rclone ~/bin
  rm -rf rclone-v*-linux-amd64 rclone.zip
}

ffmpeg_install() {
  # get ffmpeg
  wget -qO ffmpeg.tar.gz https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz
  tar xf ffmpeg.tar.gz && rm -rf ffmpeg-*-64bit-static/{manpages,presets,readme.txt}
  cp ffmpeg-*-64bit-static/* ~/bin
  chmod 700 ~/bin/{ffmpeg,ffprobe,ffmpeg-10bit,qt-faststart}
  rm -rf ffmpeg{.tar.gz,-*-64bit-static}
}

speedtest_cli_install() {
  # get speedtest-cli
  echo "${yellow}Installing speedtest-cli${reset}"
  pip install speedtest-cli
}

nginx_setup() {
  # replace Apache with nginx
  echo "${yellow}Replacing Apache with nginx${reset}"
  mkdir ~/.nginx
}

h5ai_install() {
  # get h5ai
  echo "${yellow}Installing h5ai${reset}"
  wget -qO h5ai.zip http://git.io/vEMGv
  unzip -qo h5ai.zip -d ~/www/$(whoami).$(hostname -f)/public_html/
  rm h5ai.zip
}

h5ai_copy_configs() {
  # copy h5ai configs
  echo "${yellow}Copying h5ai configs${reset}"
  cp -r _h5ai/. ~/www/$(whoami).$(hostname -f)/public_html/_h5ai/
}

h5ai_symlink_rtorrent_data() {
  # symlink rtorrent data
  echo "${yellow}Creating symbolic link to rtorrent data${reset}"
  ln -sf ~/private/rtorrent/data ~/www/$(whoami).$(hostname -f)/public_html/links/rtorrent
}

nginx_copy_configs() {
  # set home directory path in nginx links config
  echo "${yellow}Setting home directory path in nginx links config${reset}"
  sed -i "s|{{ HOME }}|$HOME|g" .nginx/conf.d/000-default-server.d/links.conf

  # copy nginx configs
  echo "${yellow}Copying nginx configs${reset}"
  cp -r .nginx/. ~/.nginx
}

print_header
setup
restart_script
rclone_install
ffmpeg_install
speedtest_cli_install
nginx_setup
h5ai_install
h5ai_copy_configs
h5ai_symlink_rtorrent_data
nginx_copy_configs

echo "${green}Done!${reset}"
