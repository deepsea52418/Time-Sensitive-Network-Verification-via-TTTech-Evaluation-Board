import udp_latency
import sys

if __name__ == "__main__":
    server = udp_latency.Server()
    server.listen(buffer_size=1500, verbose=True)
    server.evaluate()
    server.save('result.csv')
