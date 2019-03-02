urxvt -g 90x1+565+460 -e bash -c 'LAUNCHER=true /bin/zsh -i -t'& > /dev/null
xdotool mousemove 960 540
sleep 0.1
xdotool key "Super+s"