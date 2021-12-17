# Scenario 2 - IEEE 802.1Qbv

The basic idea is to schedule traffic for AV, then AV cannot be affected by BE anyway.



## 1. Experiment setting

**Topology:** Testbed topology is in `low_level.drawio`

**Gates**: 

First create `default.cfg` as:

```
## All gates open for default setting
sgs 1000 0xff
```

Then create `av_gate_k.cfg` files where $k \in [0, 10]$

```
## Set gate openning time for specific time period
sgs (k)00000 0x20
sgs (10 - k)0000 0xdf
```

**CBS shaper:** Default setting

**BE flow** is non-preemptive, priority -> `2`

**AV flow** is non-preemptive, priority -> `5`




## 2. Boards configuration

For static experiment, run following on host2

```
## Set default.cfg back after experiment
tsntool st wrcl sw0p5 av_gate_2.cfg
tsntool st configure +0.0 1/1000
```


For dynamic experiment, make a shell script `auto_tas.sh` and run on host2 **during the traffic flow**

```
sudo sh auto_tas.sh
```



## 3. Generating traffic flow

Please install iperf 2.09 under `tools` folder, only this version supports `-e` parameter.



### 3.1 Static scheduling

 **AV flow**

    ## Total 4 sets of experiments

    ## Set default gate on host2 first
    at xx:xx -f av_script/default_static_constantly.sh
    at xx:xx -f av_script/default_static_periodicly.sh
    
    ## Set scheduled gate on host2 --> av_gate_2.cfg
    at xx:xx -f av_script/gated_static_constantly.sh
    at xx:xx -f av_script/gated_static_periodicly.sh

**BE flow**

    ## Set default gate on host2 first
    at xx:xx -f be_script/default_static_constantly.sh
    at xx:xx -f be_script/default_static_periodicly.sh

    ## Set scheduled gate on host2 --> av_gate_2.cfg
    at xx:xx -f be_script/gated_static_constantly.sh
    at xx:xx -f be_script/gated_static_periodicly.sh
    

*Because iperf supports TCP bandwidth testing, the testing results from server and clients are same. If using UDP, the result on both ends should be logged.*



### 3.2 Dynamic scheduling

For dynamic experiment, make a shell script `auto_tas.sh` and run on host2 **during the traffic flow**

 **Zelin (AV flow)**

    at xx:xx -f av_script/dynamic_constantly.sh
    

**Jiachen (BE flow)**

    at xx:xx -f be_script/dynamic_constantly.sh

