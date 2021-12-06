## Problems

802.1 Qbu preemption doesn't work

Potential reasons:

- VLan PCP are not tagged.
- PCP are tagged but no preemption needed.

How to make sure PCP are tagged?

> Any packet sent through the VLAN interface is automatically tagged with the VLAN information (such as ID and PCP). Any packet received from that interface belongs to the VLAN. https://tsn.readthedocs.io/vlan.html

By using egress can map linux priority to VLan priority

I believe VLan PCP are successfully tagges.


## Test

Start test by Scenario1 setting

When queue1 is set preemption, NOT frame merge found

When queue0 is set preemption, frame merge found

Conclusion -> Colision happens, but PCP is not correct.

## Test 2

Let queue0 preemptive

Only send flow(100M) with PCP 1, number of merge grows slowly.

WHY?

## Test 3

Let queue5 preemptive

Only send flow(100M) with PCP 5, number of merge grows slowly.



## Old memory

When use two PC (windows) send flow without set priority, queue 0 is their default queue.

Conclusion from Test 2,3,old memory -> perhaps the mapping from PCP to queue is

    0,1
    1,0
    2,2
    3,3
    4,4
    5,5
    6,6
    7,7

## Conclusion

tsntool brport rdtctbl sw0p2

use above operation can see the mapping.



