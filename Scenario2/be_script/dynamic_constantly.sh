#! /bin/sh
iperf -c 192.168.10.10 -b 80M -M 1500 -e -t 100 -i 1 > be_dynamic.txt