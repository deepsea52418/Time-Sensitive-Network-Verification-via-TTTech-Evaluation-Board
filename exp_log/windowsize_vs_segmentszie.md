The Maximum Segment Size is the largest TCP segment that can be transported in a single IP packet. It is derived from the Maximum Transfer Unit (MTU) minus IP header overhead minus TCP header overhead. For TCP over IPv4 over Ethernet without options, that's 1460 bytes.

The TCP window size is the amount of data "in flight", ie. being transmitted before an ACK is required. The window size depends on the channel, especially its available bandwidth and its round-trip time (RTT). The window size is adapted constantly to avoid congestion. Normally, it's a multiple of the MSS.

MSS and window size are completely different things and pretty much independent of each other.