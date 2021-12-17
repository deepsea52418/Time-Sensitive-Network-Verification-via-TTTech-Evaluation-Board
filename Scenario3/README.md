# Scenario 3 - IEEE 802.1Qav

The idea for CBS shaper is quite simple, which smooth the traffic and make it evenly in time.

> Each queue can have CBS assigned to it. Furthermore, those that have it, also have the credit assigned. Transmission of a frame is possible only if the credit is non-negative. If there are no messages in the queue and the credit is positive, it is reset to zero. It is increased with a conﬁgurable rate called the idle slope while frames are waiting for transmission in the queue, or while there are no messages and the credit is negative. It is decreased with a conﬁgurable rate called the send slope while frame or frames (depending on how much credit has been built up previously) are being transmitted。

On the board, the only one configuration is SLOPE which designed for constraint the desired bandwidth for each queue.



## 1. Experiment setting

**Topology:** Testbed topology is in `low_level.drawio`

**Gates**: default setting

**BE flow** is non-preemptive, priority -> `2`

**AV flow** is non-preemptive, priority -> `5`

**CBS Shaper:** Bandwidth of AV flow is controled by CBS shaper



## 2. Boards configuration

Run this shell script **during the experiment**

```
tsntool fqtss slope 5 10000000
tsntool fqtss tsa 5 cbs sw0p3
sleep 10

tsntool fqtss slope 5 20000000
tsntool fqtss tsa 5 cbs sw0p3
sleep 10

.....

tsntool fqtss slope 5 100000000
tsntool fqtss tsa 5 cbs sw0p3

sleep 10
```



## 3. Generating traffic flow

Please install iperf 2.09 under `tools` folder, only this version supports `-e` parameter.



 **Zelin (AV flow)**

Without `-b`  parameter, the default bandwidth is maximum (100Mbits for current board setting)

```
## Set default gate on host2 first
iperf -c 192.168.10.10 -e -i 1 > av_qbv_default.txt | at xx:xx

## Set scheduled gate on host2 --> av_gate_2.cfg
iperf -c 192.168.10.10 -e -i 1 > av_qbv_sche.txt | at xx:xx
```

