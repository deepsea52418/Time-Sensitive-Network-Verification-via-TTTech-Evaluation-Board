## Questions

THink about it. How do those queues work without setting TAS on board?

## Answer

> A cycle time of 1/100 seconds = 10 millisecond is a lot longer than the time needed to complete one schedule
run-through. After the schedule has finished within a cycle, the gates remain in the last configured state until
the end of the cycle

~~Probabily every gates are always open.~~

Gates are always open, but low priority frame moves out only when high priority queue is empty!

> If Traffic Shaping , Scheduled Traffic, and Preemptable Traffic (subsection 4.3.7) functionalities are not active, the queues are emptied in descending order so that frames from higher queues are sent before frames from any of the lower queues of the port.