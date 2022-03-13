##Test Future.wait

This is a Future.wait test which just loop counter and output the time spent for this.
I am running it on a linux PC with an AMD 5950x. The timing is confusing me:

Debug mode (some times crashes)
1 thread(s) ms: 4205
2 thread(s) ms: 6219
3 thread(s) ms: 2394
4 thread(s) ms: 2431
5 thread(s) ms: 2450
6 thread(s) ms: 2487
7 thread(s) ms: 2655
8 thread(s) ms: 2679
9 thread(s) ms: 4692
10 thread(s) ms: 4780
...

Release mode
1 thread(s) ms: 1337
2 thread(s) ms: 1360
3 thread(s) ms: 1366
4 thread(s) ms: 2183
5 thread(s) ms: 1389
6 thread(s) ms: 1427
7 thread(s) ms: 1403
8 thread(s) ms: 1406
9 thread(s) ms: 3494
10 thread(s) ms: 3489


What i see is a noticeable discrepancy in timing. What I'm missing here?
Also by running the test for 1 thread many times, I got this:
1 thread(s) ms: 4187
1 thread(s) ms: 6057
1 thread(s) ms: 2281
1 thread(s) ms: 2279