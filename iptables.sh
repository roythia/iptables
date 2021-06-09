#!/bin/bash

# Clear default iptables config
iptables -F
iptables -X
iptables -Z

# Block youtube.com
iptables -A OUTPUT -m string --string "youtube.com" --algo bm --to 65535 -j DROP

# Block googlevideo.com
iptables -A OUTPUT -m string --string "googlevideo.com" --algo bm --to 65535 -j DROP

# Block facebook.com
iptables -A OUTPUT -m string --string "facebook.com" --algo bm --to 65535 -j DROP

# Block messenger.com
iptables -A OUTPUT -m string --string "messenger.com" --algo bm --to 65535 -j DROP

# Block instagram.com
iptables -A OUTPUT -m string --string "instagram.com" --algo bm --to 65535 -j DROP

# Block twitter.com
iptables -A OUTPUT -m string --string "twitter.com" --algo bm --to 65535 -j DROP

# Block spotify.com
iptables -A OUTPUT -m string --string "spotify.com" --algo bm --to 65535 -j DROP

# Block netflix.com
iptables -A OUTPUT -m string --string "netflix.com" --algo bm --to 65535 -j DROP

# Block utorrent.com
iptables -A OUTPUT -m string --string "utorrent.com" --algo bm --to 65535 -j DROP

# Block Lazada
iptables -A OUTPUT -m string --string "lazada.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "lazada.ph" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "lazada.com.ph" --algo bm --to 65535 -j DROP

# Block Shopee
iptables -A OUTPUT -m string --string "shopee.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "shopee.ph" --algo bm --to 65535 -j DROP

# Block Taobao
iptables -A OUTPUT -m string --string "taobao.com" --algo bm --to 65535 -j DROP

# Block battle.net
iptables -A OUTPUT -m string --string "battle.net" --algo bm --to 65535 -j DROP

# Block blizzard.com
iptables -A OUTPUT -m string --string "blizzard.com" --algo bm --to 65535 -j DROP

# Block Steam
iptables -A OUTPUT -m string --string "steampowered.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "steamgames.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "steamgames.net" --algo bm --to 65535 -j DROP

# Block Garena
iptables -A OUTPUT -m string --string "garena.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "garena.ph" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "garena.sg" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "garena.tw" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "garena.my" --algo bm --to 65535 -j DROP

# Block mobilelegends.com
iptables -A OUTPUT -m string --string "mobilelegends.com" --algo bm --to 65535 -j DROP

# Block Windows Update
iptables -A OUTPUT -m string --string "windowsupdate.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "windowsupdate.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "windowsupdate.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "update.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "update.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "download.windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "download.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "download.windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "wustat.windows.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "ntservicepack.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "stats.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "stats.microsoft.com" --algo bm --to 65535 -j DROP

# Block 172.25.101.10
iptables -A OUTPUT -d 172.25.101.10 -j DROP

# Block 172.25.101.20
iptables -A OUTPUT -d 172.25.101.20 -j DROP

# Block 172.25.101.40
iptables -A OUTPUT -d 172.25.101.40 -j DROP

# Block 172.25.101.60
iptables -A OUTPUT -d 172.25.101.60 -j DROP

# Block 172.25.101.211
iptables -A OUTPUT -d 172.25.101.211 -j DROP

# Block 172.25.101.26
iptables -A OUTPUT -d 172.25.101.26 -j DROP

# Block 172.25.101.11
#iptables -A OUTPUT -d 172.25.101.11 -j DROP

# Block 172.25.101.18
iptables -A OUTPUT -d 172.25.101.18 -j DROP

# Block 172.25.101.21
#iptables -A OUTPUT -d 172.25.101.21 -j DROP

# Block 172.25.200.0/22
iptables -A OUTPUT -d 172.25.200.0/22 -j DROP

# show iptables list
iptables -L -n --line-numbers

# Save iptables config to /etc/sysconfig/iptables
service iptables save