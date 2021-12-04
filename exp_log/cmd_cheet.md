## Setting IP

    ip addr add 0.0.0.0/24 dev eth0
    ip addr del 0.0.0.0/24 dev eth0
    ip addr show

## Setting link

    ip link show
    ip link add link eth0 name vlan10 type vlan id 10
    ip addr add 192.168.0.3/24 dev vlan10
    ip link set vlan10 type vlan egress 0:7
    ip link del vlan10
    ip link set vlan10 up