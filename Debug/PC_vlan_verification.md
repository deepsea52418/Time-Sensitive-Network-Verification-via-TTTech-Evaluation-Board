## PC Without Vlan

Laptop: 192.168.0.10 (vlan = 10)

Result -> Cannot connect with Laptop (vlan 10), with setting eth0 as 192.168.0.21 or without

Conclusion -> VLan setting for Laptop must work

## PC With Vlan

Let PC eth0 as Vlan10

Let Desktop Chuanyu as Vlan10

See if they can communicate with each other

> This Vlan is set by both "netplan" and "ip link" command.

Result -> PC and Desktop can talk with each other

Conclusion -> 

