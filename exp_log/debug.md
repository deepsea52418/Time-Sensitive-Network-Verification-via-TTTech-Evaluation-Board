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

Conclusion -> VLan setting for Ubuntu clients must work

## Board debug

Let PC eth0 be origin(192.168.0.21)

Let board without any seeting

Result -> PC and board can talk with each other

Conclusion -> Host can connect with a device with ip on physical port.

---

Let PC eth0 be origin(192.168.0.21)

Let PC vlan10 be the same ip 192.168.0.21

Let board without any seeting

Result -> PC and board can talk with each other

Delete eth0 ip

Result -> They can NOT talk anymore

Add eth0 ip

Result -> They still cannot talk

Delete vlan10

Conclusion -> Vlan has same ip will effect normal ip communication.

Solution Let's make VLAN into another network segment 192.168.10.XXX


---


Everything works now.


