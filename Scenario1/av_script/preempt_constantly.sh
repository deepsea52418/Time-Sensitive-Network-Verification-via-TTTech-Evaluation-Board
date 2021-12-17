#! /bin/sh
iperf -c 192.168.10.14 -e -M 1500 -b 50M -t 100 -i 1 > av_preempt.txt
