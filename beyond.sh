#!/usr/bin/env bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

install() {
	    cd tg
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tgcli
		chmod +x tgcli
		cd ..
		chmod +x bot
		chmod +x tg
		chmod +x autobd.sh
}

function mobham() {
	echo -e "\e[0m"
	green "     >>>>                       MOBHAM BOT INDUSTRIES                             "
	green "     >>>>                       POWERED BY ELECTROVIRUS                             "
	white "     >>>>                       MANAGED BY ARTIN MOBHAM                               "
	white "     >>>>                       VIRTUAL GENIUSES                                 "
	red   "     >>>>                       VIRTUAL KINGS                                    "
	red   "     >>>>                       https://t.me/MOBHAM_NEWS                                  "
	echo -e "\e[0m"
}

red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	mobham
	install
  else
if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi
	mobham
   #sudo service redis-server restart
   ./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
   #./tg/tgcli -s ./bot/bot.lua $@
fi
