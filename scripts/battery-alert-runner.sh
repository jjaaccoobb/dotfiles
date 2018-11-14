#/bin/sh
ps aux | grep -ie battery-alert-messenger.sh | awk '{print $2}' | xargs kill -9

sleep 2

nohup sh "/home/jacob/scripts/battery-alert-messenger.sh" &>/dev/null &

