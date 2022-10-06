:- dynamic(fatorial/2).

fatorial(0,1).
fatorial(N,F) :- is(N1,'-'(N,1)),
fatorial(N1,F1),
is(F,'*'(N,F1)),
asserta((fatorial(N, F))).

/** <examples>

?- fatorial(0,R).

?- time(fatorial(5,R)).

?- time(fatorial(10000,R)).

?- time(fatorial(9999,R1)), time(fatorial(10000,R2)).

*/