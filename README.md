##Test Future.wait

This is a Future.wait test which just loop counter and output the time spent for this.
I am running it on a linux PC with an AMD 5950x. The timing is confusing me:<br/>

Debug mode (some times crashes)<br/>
1 thread(s) ms: 4205<br/>
2 thread(s) ms: 6219<br/>
3 thread(s) ms: 2394<br/>
4 thread(s) ms: 2431<br/>
5 thread(s) ms: 2450<br/>
6 thread(s) ms: 2487<br/>
7 thread(s) ms: 2655<br/>
8 thread(s) ms: 2679<br/>
9 thread(s) ms: 4692<br/>
10 thread(s) ms: 4780<br/>
...<br/>
<br/>
Release mode<br/>
1 thread(s) ms: 1337<br/>
2 thread(s) ms: 1360<br/>
3 thread(s) ms: 1366<br/>
4 thread(s) ms: 2183<br/>
5 thread(s) ms: 1389<br/>
6 thread(s) ms: 1427<br/>
7 thread(s) ms: 1403<br/>
8 thread(s) ms: 1406<br/>
9 thread(s) ms: 3494<br/>
10 thread(s) ms: 3489<br/>


What i see is a noticeable discrepancy in timing. What I'm missing here?
Also by running the test for 1 thread many times, I got this:<br/>
1 thread(s) ms: 4187<br/>
1 thread(s) ms: 6057<br/>
1 thread(s) ms: 2281<br/>
1 thread(s) ms: 2279<br/>
