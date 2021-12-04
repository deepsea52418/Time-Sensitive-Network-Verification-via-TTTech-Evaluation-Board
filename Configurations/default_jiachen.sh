#! /bin/sh

## remove old vlan
ip link delete name vlan3
ip addr del 192.168.0.13/24 dev eth0

## remove eth0 ip

## Add vlan to eth0 for talker jiachen
ip link add link eth0 name vlan3 type vlan id 3
ip addr add 192.168.10.13/24 dev vlan3

## Change every priority from Host4 as 
ip link set vlan3 type vlan egress 0:5
ip link set vlan3 type vlan egress 1:5
ip link set vlan3 type vlan egress 2:5
ip link set vlan3 type vlan egress 3:5
ip link set vlan3 type vlan egress 4:5
ip link set vlan3 type vlan egress 5:5
ip link set vlan3 type vlan egress 6:5
ip link set vlan3 type vlan egress 7:5

ip link set vlan3 up