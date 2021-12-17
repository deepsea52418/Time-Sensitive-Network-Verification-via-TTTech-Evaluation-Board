#! /bin/sh

## remove old vlan
ip link delete name vlan10

## Add vlan to eth0 for talker zelin
ip link add link eth0 name vlan10 type vlan id 10
ip addr add 192.168.10.21/24 dev vlan10

## Change every priority from Host4 as 
ip link set vlan10 type vlan egress 0:7
ip link set vlan10 type vlan egress 1:7
ip link set vlan10 type vlan egress 2:7
ip link set vlan10 type vlan egress 3:7
ip link set vlan10 type vlan egress 4:7
ip link set vlan10 type vlan egress 5:7
ip link set vlan10 type vlan egress 6:7
ip link set vlan10 type vlan egress 7:7

ip link set vlan10 up

ip addr add 192.168.0.21/24 dev eth0