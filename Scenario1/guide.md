# Scenario 1 - IEEE 802.1Qbu

The basic idea is use AV to preempt BE, then see the end to end latency of them.

## Experiment setting

Topology is as same as low_level design.

Gate status: No setting

CBS status: No setting

BE is preemptive, priority -> 1

AV is non-preemptive, priority -> 5



## Boards configuration

For Host02:

tsntool preempt setq 1 preempt sw0p5
tsntool preempt enable verify 100 sw0p5

tsntool preempt setq 1 express sw0p5
tsntool preempt enable verify 100 sw0p5
## Traffic flow

### Zelin (AV)

    iperf -c 192.168.10.10 -u -l 60 -b 50M -e -i 1 > s1_av_preem_client.txt
    iperf -c 192.168.10.10 -u -l 60 -b 50M -e -i 1 > s1_av_nopreem_client.txt

### Jiachen (BE)

    iperf -c 192.168.10.14 -u -l 60 -b 50M -e -i 1 > s1_be_preem_client.txt
    iperf -c 192.168.10.14 -u -l 60 -b 50M -e -i 1 > s1_be_nopreem_client.txt

### Chuanyu (AV)

    iperf.exe -u -e -s > s1_av_preem_server.txt
    iperf.exe -u -e -s > s1_av_nopreem_server.txt

### Areej (BE)

    iperf.exe -u -e -s > s1_be_preem_server.txt
    iperf.exe -u -e -s > s1_be_nopreem_server.txt
