#! /bin/sh

## remove old vlan
ip link delete name vlan2

## Add vlan to eth0 for talker zelin
ip link add link eth0 name vlan2 type vlan id 2
ip addr add 192.168.0.12/24 dev vlan2

## Change every priority from Host4 as 
ip link set vlan2 type vlan egress 0:1
ip link set vlan2 type vlan egress 1:1
ip link set vlan2 type vlan egress 2:1
ip link set vlan2 type vlan egress 3:1
ip link set vlan2 type vlan egress 4:1
ip link set vlan2 type vlan egress 5:1
ip link set vlan2 type vlan egress 6:1
ip link set vlan2 type vlan egress 7:1

ip link set vlan2 up