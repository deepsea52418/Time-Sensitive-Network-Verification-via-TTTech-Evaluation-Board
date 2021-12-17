# Scenario 1 - IEEE 802.1Qbu

The basic idea is to use AV flow to preempt BE flow, then see the end to end latency of them.



## 1. Experiment setting

**Topology:** Testbed topology is in `low_level.drawio`

**Gates**: Default setting 

**CBS shaper**: Default setting 

**BE flow** is preemptive, priority -> `2`

**AV flow** is non-preemptive, priority -> `5`



## 2. Boards configuration

On both Host02 and Host03, run:

```
## Non-preemptive setting

tsntool preempt setq 2 express sw0p5
tsntool preempt enable verify 100 sw0p5
tsntool preempt show sw0p5
```

```
## Preemptive setting

tsntool preempt setq 2 preempt sw0p5
tsntool preempt enable verify 100 sw0p5
tsntool preempt show sw0p5
```



## 3. Generating traffic flow

Please install iperf 2.09 under `tools` folder, only this version supports `-e` parameter.



### 3.1 Traffic flow collision (Periodicly) 

Update: Add `at` command to make sure they run at the same time.
s
**Zelin (AV flow)**

    ## Set Non-preemptive on host2 and host3 first
    iperf -c 192.168.10.10 -e -M 1400 -t 100 > av_nonpreempt.txt
    
    ## Set Preemptive on host2 and host3 first
    iperf -c 192.168.10.10 -e -M 1400 -t 100> av_preempt.txt

**Jiachen (BE flow)**

    ## Set Non-preemptive on host2 and host3 first
    iperf -c 192.168.10.14 -e -M 1500 -t 100> be_nonpreempt.txt
    
    ## Set Preemptive on host2 and host3 first
    iperf -c 192.168.10.14 -e -M 1500 -t 100> be_preempt.txt

*Because iperf supports TCP bandwidth testing, the testing results from server and clients are same. If using UDP, the result on both ends should be logged.*



### 3.2 Important Time-Critical message (Asynchronous)

**Zelin (AV flow)**

    ## Set Non-preemptive on host2 and host3 first
    ping -n 100 - 192.168.10.10 > av_nonpreempt_ping.txt
    
    ## Set Preemptive on host2 and host3 first
    ping -f 192.168.10.10 > av_preempt_ping.txt

**Jiachen (BE flow)**

    ## Set Non-preemptive on host2 and host3 first
    iperf -c 192.168.10.14 -e -M 1500 
    
    ## Set Preemptive on host2 and host3 first
    iperf -c 192.168.10.14 -e -M 1500

*Here replace AV client by CT client will be more reasonable.*
