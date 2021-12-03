#! /bin/sh

## Add vlan to eth0 for talker jiachen
ip link add link sw0ep name vlan3 type vlan id 3

## Change every priority from Host4 as 
ip link set vlan3 type vlan egress 0:5
ip link set vlan3 type vlan egress 1:5
ip link set vlan3 type vlan egress 2:5
ip link set vlan3 type vlan egress 3:5
ip link set vlan3 type vlan egress 4:5
ip link set vlan3 type vlan egress 5:5
ip link set vlan3 type vlan egress 6:5
ip link set vlan3 type vlan egress 7:5