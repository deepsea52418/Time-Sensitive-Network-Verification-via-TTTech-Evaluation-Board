#! /bin/sh

## This is the configuration for Host 3333333333333333333333333333333333333333333333333333333333333333333333333333

## Make link a 100Mbits channel
ethtool -s sw0p5 speed 100 duplex full autoneg on

## remove old vlan
ip link delete vlan10

## Add vlan to sw0ep for host 03
ip link add link sw0ep name vlan10 type vlan id 10

## DONT ADD VLAN IP FOR HOST!!!!!!
ip addr add 192.168.10.3/24 dev vlan10

## Change every priority from Host3 as 7
ip link set vlan10 type vlan egress 0:7
ip link set vlan10 type vlan egress 1:7
ip link set vlan10 type vlan egress 2:7
ip link set vlan10 type vlan egress 3:7
ip link set vlan10 type vlan egress 4:7
ip link set vlan10 type vlan egress 5:7
ip link set vlan10 type vlan egress 6:7
ip link set vlan10 type vlan egress 7:7

## Start vlan setting for host3
ip link set vlan10 up

## Set up vlan port 1
bridge vlan add vid 10 dev sw0p1


## Set up vlan port 2
bridge vlan add vid 2 dev sw0p2

## Set up vlan port 3
bridge vlan add vid 3 dev sw0p3

## Set up vlan port 4
bridge vlan add vid 10 dev sw0p4

## Set up vlan port 5
bridge vlan add vid 2 dev sw0p5
bridge vlan add vid 3 dev sw0p5
bridge vlan add vid 10 dev sw0p5

## remove sw0ep original ip
ip addr del 192.168.0.3/24 dev sw0ep





