#! /bin/sh

## Add vlan to eth0 for talker zelin
ip link add link sw0ep name vlan2 type vlan id 2

## Change every priority from Host4 as 
ip link set vlan2 type vlan egress 0:1
ip link set vlan2 type vlan egress 1:1
ip link set vlan2 type vlan egress 2:1
ip link set vlan2 type vlan egress 3:1
ip link set vlan2 type vlan egress 4:1
ip link set vlan2 type vlan egress 5:1
ip link set vlan2 type vlan egress 6:1
ip link set vlan2 type vlan egress 7:1