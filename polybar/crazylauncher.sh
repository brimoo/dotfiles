#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar -c $HOME/.config/polybar/config.crazy time &
polybar -c $HOME/.config/polybar/config.crazy cpu &
polybar -c $HOME/.config/polybar/config.crazy pkg &
polybar -c $HOME/.config/polybar/config.crazy temperature &
polybar -c $HOME/.config/polybar/config.crazy wm &
polybar -c $HOME/.config/polybar/config.crazy spotify &
polybar -c $HOME/.config/polybar/config.crazy volume &
polybar -c $HOME/.config/polybar/config.crazy network &

echo "Bars launched..."
