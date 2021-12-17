#! /bin/sh
iperf -c 192.168.10.14 -b 20M -M 1500 -e -t 100 -i 1 > av_dynamic.txt