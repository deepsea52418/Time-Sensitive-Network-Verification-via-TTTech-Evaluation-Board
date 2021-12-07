## 1. Default configuration

Should fix following file for each client

    /etc/netplan/50-cloud-init.yaml       

Make sure the name of ethernet port is "eth0", dhcp4 is off:

    # This file is generated from information provided by the datasource.  Changes
    # to it will not persist across an instance reboot.  To disable cloud-init's
    # network configuration capabilities, write a file
    # /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
    # network: {config: disabled}
    network:
        version: 2
        renderer: networkd
        ethernets:
            eth0:
                dhcp4: false
                optional: false 
        wifis:
            wlan0:
                dhcp4: true
                optional: true
                access-points:
                    "OpenWrt":
                        password: "1234567809"
                        hidden: false

Then apply:

- default_02.sh
- default_03.sh
- default_admin.sh
- default_jiachen.sh
- default_zelin.sh

To set up vlan and egress setting.

## 2. Specific configuration

Other configurations are depended on the requirement of specific scenario, please see README.md in each scenario.



