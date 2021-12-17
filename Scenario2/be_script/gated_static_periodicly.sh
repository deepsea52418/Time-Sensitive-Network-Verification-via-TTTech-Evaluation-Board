#! /bin/sh
timeout 10s iperf -c 192.168.10.10 -b 10M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 20M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 30M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 40M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 50M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 60M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 70M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 80M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 90M -M 1500 -e  -i 1

timeout 10s iperf -c 192.168.10.10 -b 100M -M 1500 -e  -i 1