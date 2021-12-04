# Scenario1 - Single media application

## 1. Experiment setting

### Jiachen & Zelin

Should fix following file

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

Then apply those configurations in each folder

## 2. Experiment conduction

**Please make sure iperf2_2.0.9 is installed for Jiachen, Zelin and Chuanyu clients**

### 


### Zelin





### Jiachen

**Talker (192.168.0.10)** 

iperf3.exe -c 192.168.0.11 -u -t 100 -b 100m 

**Host (192.168.0.4)** iperf3 -c 192.168.0.3 -u -t 100 -b 10m

**Listener (192.168.0.11)** 开启 iperf3.exe -s -J > udp_simple_be_log.json

**Host (192.168.0.3)** 开启 iperf3 -s -J > udp_simple_ct_log.json