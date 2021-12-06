# Scenario 2 - IEEE 802.1Qbv

The basic idea is to schedule traffic for AV.

BE: Zelin --> desktop [50Mb] 
AV: Jiachen --> PC [50Mb]

## Boards configuration

For Host02:

sgs 10000 0x20
sgs 90000 0x04
tsntool st wrcl sw0p5 qbv.cfg
tsntool st configure +0.0 1/10000

sleep 5

sgs 20000 0x20
sgs 80000 0x04
tsntool st wrcl sw0p5 qbv.cfg
tsntool st configure +0.0 1/10000

sleep 5

sgs 30000 0x20
sgs 70000 0x04
tsntool st wrcl sw0p5 qbv.cfg
tsntool st configure +0.0 1/10000

sleep 5

sgs 40000 0x20
sgs 60000 0x04
tsntool st wrcl sw0p5 qbv.cfg
tsntool st configure +0.0 1/10000

sleep 5

sgs 50000 0x20
sgs 50000 0x04
tsntool st wrcl sw0p5 qbv.cfg
tsntool st configure +0.0 1/10000


## Traffic flow

