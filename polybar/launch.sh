# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top &
polybar bottom &

# Set screen resolution to 1920x1080
xrandr --output HDMI-1 --mode 1920x1080

echo "Bars launched..."
