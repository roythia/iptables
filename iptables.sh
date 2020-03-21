#!/bin/bash

# Clear default iptables config
iptables -F
iptables -X
iptables -Z

# Block youtube.com
iptables -A OUTPUT -m string --string "youtube.com" --algo bm --to 65535 -j DROP

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

# Block Lazada
iptables -A OUTPUT -m string --string "lazada.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "lazada.ph" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "lazada.com.ph" --algo bm --to 65535 -j DROP

# Block Shopee
iptables -A OUTPUT -m string --string "shopee.com" --algo bm --to 65535 -j DROP
iptables -A OUTPUT -m string --string "shopee.ph" --algo bm --to 65535 -j DROP

# Block Taobao
iptables -A OUTPUT -m string --string "taobao.com" --algo bm --to 65535 -j DROP

# Block 172.25.101.10
iptables -A OUTPUT -p tcp -d 172.25.101.10 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.10 --dport 443 -j DROP

# Block 172.25.101.20
iptables -A OUTPUT -p tcp -d 172.25.101.20 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.20 --dport 443 -j DROP

# Block 172.25.101.40
iptables -A OUTPUT -p tcp -d 172.25.101.40 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.40 --dport 443 -j DROP

# Block 172.25.101.60
iptables -A OUTPUT -p tcp -d 172.25.101.60 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.60 --dport 443 -j DROP

# Block 172.25.101.211
iptables -A OUTPUT -p tcp -d 172.25.101.211 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.211 --dport 443 -j DROP

# Block 172.25.101.26
iptables -A OUTPUT -p tcp -d 172.25.101.26 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.26 --dport 443 -j DROP

# Block 172.25.101.11
iptables -A OUTPUT -p tcp -d 172.25.101.11 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.11 --dport 443 -j DROP

# Block 172.25.101.18
iptables -A OUTPUT -p tcp -d 172.25.101.18 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.18 --dport 443 -j DROP

# Block 172.25.101.21
iptables -A OUTPUT -p tcp -d 172.25.101.21 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.21 --dport 443 -j DROP

# Block 172.25.101.27
iptables -A OUTPUT -p tcp -d 172.25.101.27 --dport 80 -j DROP
iptables -A OUTPUT -p tcp -d 172.25.101.27 --dport 443 -j DROP

# Block 172.25.200.0/22
iptables -A OUTPUT -d 172.25.200.0/22 -j DROP

# Save iptables config to /etc/sysconfig/iptables
service iptables save

# show iptables list
iptables -L -n --line-numbers