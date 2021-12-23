import udp_latency

# Test for client
client = udp_latency.Client()
client.send(1, 1500, 10, True)
