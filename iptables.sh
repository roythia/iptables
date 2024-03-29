#!/bin/bash

# Clear default iptables config
iptables -F
iptables -X
iptables -Z

# Block youtube.com
iptables -A OUTPUT -m string --string "youtube.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "ytimg.com" --algo bm --to 65535 -j DROP

# Block googlevideo.com
iptables -A OUTPUT -m string --string "googlevideo.com" --algo bm --to 65535 -j DROP

# Block facebook.com
iptables -A OUTPUT -m string --string "facebook.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "fbcdn.net" --algo bm --to 65535 -j DROP

# Block messenger.com
iptables -A OUTPUT -m string --string "messenger.com" --algo bm --to 65535 -j DROP

# Block instagram.com
iptables -A OUTPUT -m string --string "instagram.com" --algo bm --to 65535 -j DROP

# Block twitter.com
iptables -A OUTPUT -m string --string "twitter.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "twimg.com" --algo bm --to 65535 -j DROP

# Block spotify.com
iptables -A OUTPUT -m string --string "spotify.com" --algo bm --to 65535 -j DROP

# Block reddit.com
iptables -A OUTPUT -m string --string "reddit.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "redditstatic.com" --algo bm --to 65535 -j DROP

# Block netflix.com
iptables -A OUTPUT -m string --string "netflix.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "nflxso.net" --algo bm --to 65535 -j DROP

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
iptables -A OUTPUT -m string --string "update.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "download.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "wustat.windows.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "ntservicepack.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "stats.microsoft.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "windowsupdate.nsatc.net" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "11.au.download.windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "au.download.windowsupdate.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "117.18.232.240" --algo bm --to 65535 -j DROP

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

# Block 112.204.80.58
iptables -I INPUT -s 112.204.80.58 -j DROP

# Block 136.158.83.59
iptables -I INPUT -s 136.158.83.59 -j DROP

iptables -I INPUT -s 49.144.141.184 -j DROP
iptables -I INPUT -s 136.158.83.47 -j DROP
iptables -I INPUT -s 124.106.141.184 -j DROP
iptables -I INPUT -s 136.158.83.59 -j DROP
iptables -I INPUT -s 136.158.28.20 -j DROP
iptables -I INPUT -s 112.199.68.14 -j DROP
iptables -I INPUT -s 136.158.28.46 -j DROP
iptables -I INPUT -s 136.158.28.138 -j DROP
iptables -I INPUT -s 136.158.32.246 -j DROP
iptables -I INPUT -s 136.158.32.90 -j DROP
iptables -I INPUT -s 136.158.32.102 -j DROP
iptables -I INPUT -s 136.158.32.61 -j DROP
iptables -I INPUT -s 136.158.32.39 -j DROP
iptables -I INPUT -s 136.158.33.202 -j DROP
iptables -I INPUT -s 136.158.33.233 -j DROP
iptables -I INPUT -s 136.158.32.72 -j DROP
iptables -I INPUT -s 52.149.194.33 -j DROP
iptables -I INPUT -s 112.201.163.164 -j DROP
iptables -I INPUT -s 131.226.67.157 -j DROP

iptables -I INPUT -s 180.190.113.38 -j DROP
iptables -I INPUT -s 180.191.222.245 -j DROP
iptables -I INPUT -s 180.191.174.59  -j DROP
iptables -I INPUT -s 180.191.174.4 -j DROP
iptables -I INPUT -s 180.191.174.159 -j DROP
iptables -I INPUT -s 180.190.119.71 -j DROP
iptables -I INPUT -s 180.191.190.130 -j DROP
iptables -I INPUT -s 180.191.247.215 -j DROP
iptables -I INPUT -s 180.190.85.84 -j DROP
iptables -I INPUT -s 180.191.191.192 -j DROP
iptables -I INPUT -s 180.191.222.49 -j DROP
iptables -I INPUT -s 180.190.112.141 -j DROP
iptables -I INPUT -s 180.190.113.49 -j DROP
iptables -I INPUT -s 180.191.156.36 -j DROP
iptables -I INPUT -s 180.190.114.87 -j DROP
iptables -I INPUT -s 180.190.87.16 -j DROP
iptables -I INPUT -s 180.190.87.178 -j DROP
iptables -I INPUT -s 180.190.87.61 -j DROP
iptables -I INPUT -s 180.190.87.178 -j DROP
iptables -I INPUT -s 180.190.87.238 -j DROP
iptables -I INPUT -s 180.190.118.97 -j DROP
iptables -I INPUT -s 180.191.159.202 -j DROP
iptables -I INPUT -s 180.191.190.47 -j DROP

# Dhing Joshua A. Esguerra
iptables -I INPUT -s 49.144.128.57 -j DROP
iptables -I INPUT -s 124.106.130.70 -j DROP
iptables -I INPUT -s 49.144.132.1 -j DROP
iptables -I INPUT -s 49.144.130.167 -j DROP
iptables -I INPUT -s 49.144.135.58 -j DROP
iptables -I INPUT -s 124.106.131.58 -j DROP
iptables -I INPUT -s 124.106.135.224 -j DROP
iptables -I INPUT -s 124.106.129.208 -j DROP
iptables -I INPUT -s 49.144.141.227 -j DROP
iptables -I INPUT -s 49.144.133.198 -j DROP
iptables -I INPUT -s 49.144.132.184 -j DROP
iptables -I INPUT -s 49.144.136.82 -j DROP
iptables -I INPUT -s 175.176.21.205 -j DROP

#test git push

# show iptables list
iptables -L -n --line-numbers

# Save iptables config to /etc/sysconfig/iptables
service iptables save