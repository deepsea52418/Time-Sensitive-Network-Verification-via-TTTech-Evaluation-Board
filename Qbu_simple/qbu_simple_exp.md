## 实验设置

### Server

**Listener (192.168.0.11)** 开启 iperf3.exe -s -J > udp_simple_be_log.json

**Host (192.168.0.3)** 开启 iperf3 -s -J > udp_simple_ct_log.json

### Client

**Talker (192.168.0.10)** iperf3.exe -c 192.168.0.11 -u -t 100 -b 100m 

**Host (192.168.0.4)** iperf3 -c 192.168.0.3 -u -t 100 -b 10m

### Setting

在 qbu 目录下是打开 preemption 的结果