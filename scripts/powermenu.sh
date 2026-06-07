#!/usr/bin/bash

chosen=$(printf "Lock\nLogout\nSuspend\nReboot\nShutdown" | \
    wofi --dmenu \
         --prompt "Power Menu" \
         --insensitive)

case "$chosen" in
    "Lock") hyprlock ;;
    "Logout") hyprctl dispatch exit ;;
    "Suspend") systemctl suspend ;;
    "Reboot") systemctl reboot ;;
    "Shutdown") systemctl poweroff ;;
esac
