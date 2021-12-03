#! /bin/sh

## This is the configuration for Host 444444444444444444444444444444444444444444444444444444444

## Make link a 100Mbits channel
ethtool -s sw0p5 100 duplex full autoneg on

## Add vlan to sw0ep for host 04
ip link add link sw0ep name vlan10 type vlan id 10

## Change every priority from Host4 as 7
ip link set vlan10 type vlan egress 0:7
ip link set vlan10 type vlan egress 1:7
ip link set vlan10 type vlan egress 2:7
ip link set vlan10 type vlan egress 3:7
ip link set vlan10 type vlan egress 4:7
ip link set vlan10 type vlan egress 5:7
ip link set vlan10 type vlan egress 6:7
ip link set vlan10 type vlan egress 7:7

## Start vlan setting for host4
ip link set vlan10 up

## Set up vlan port 1
bridge vlan add vid 10 sw0p1

## Set up vlan port 2
bridge vlan add vid 2 sw0p2

## Set up vlan port 3
bridge vlan add vid 3 sw0p3

## Set up vlan port 5
bridge vlan add vid 2 sw0p5
bridge vlan add vid 3 sw0p5
bridge vlan add vid 10 sw0p5



