# Time-Sensitive Network Set up and Verification via TTTech Evaluation Board

## 1. Introduction

Real-time systems are systems require speciﬁed timing constraints and react upon environment within precise time, which play a crucial role in wide  Internet of Things (IoT) applications, e.g., nuclear power plants, railway switching systems, automotive and avionic systems, air trafﬁc control, telecommunications, robotics, and military systems. The primary concerns of real-time systems are predictability and reliability, hence they are not only needed to promise correctness of computation, but also to guarantee the in time response. 

General real-time systems can involve both computing resource for processing data and real-time compatible communication network for data transmission. A widely used communication network in industry is Ethernet, which is introduced in 1980 by a working group of Institute of Electrical and Electronics Engineers (IEEE). Even though the average speed of Ethernet is fairly fast which can reach up to 400 Gbit/s, it is still not suitable for real-time systems due to lack of the worst case guarantee, especially for shared network.

Recently, IEEE 802.1 Task Group proposed an extension of the Ethernet so called Time-Sensitive Networking (TSN). The motivation is to provide deterministic connectivity with bounded latency, low packet delay variation, and low packet loss. Particularly, IEEE 802.1Q adds Virtual Local Area Network (VLAN) tag into the Ethernet frame to make priority and queuing possible. 802.1As aims to synchronize time for time aware applications. To support time critical message transmission and preemption, 802.1Qbv and 802.1Qbu are designed. Furthermore, 802.1Qav is introduced provides queuing and forwarding policy. Due to the deterministic real-time communication over standard Ethernet specified by above standards, TSN has attracted a proliferation of interests in the field of real-time systems.

Since the desire of research and industry field in TSN, there has already been a lot of implementations from different companies over the past few years, i.e., TTTech, Cisio, and HMS. However, except for several results in simulation, only limited paper evaluates the performance on real testbed. In order to test and analyze how does TSN perform for real-time systems in real world, this project conducted a series of experiments based on TTTech evaluation board.
