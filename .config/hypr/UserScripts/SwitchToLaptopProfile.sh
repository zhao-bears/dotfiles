#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Switch to Laptop Monitor Profile

# Variables
iDIR="$HOME/.config/swaync/images"
SCRIPTSDIR="$HOME/.config/hypr/scripts"
monitor_dir="$HOME/.config/hypr/Monitor_Profiles"
target="$HOME/.config/hypr/monitors.conf"
profile_name="laptop"

# Check if laptop profile exists
if [[ ! -f "$monitor_dir/$profile_name.conf" ]]; then
    notify-send -u critical "Monitor Profile Error" "Laptop profile not found!"
    exit 1
fi

# Copy the laptop profile to monitors.conf
cp "$monitor_dir/$profile_name.conf" "$target"

# Notify user
notify-send -u low -i "$iDIR/ja.png" "$profile_name" "Monitor Profile Loaded"

# Refresh Hyprland
sleep 1
${SCRIPTSDIR}/RefreshNoWaybar.sh &

