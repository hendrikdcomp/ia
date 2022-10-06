:- dynamic(fib/2).
fib(1, 1).
fib(0, 0).
fib(N, Valor) :-
    A is N - 1, fib(A, A1),
    B is N - 2, fib(B, B1),
    Valor is A1 + B1,
    asserta((fib(N, Valor))).

/** <examples>

?- fib(1,R).

?- time(fib(1,R)).

?- time(fib(2,R)).

?- time(fib(10000,R)).

?- time(fib(9999,R1)), time(fib(10000,R2)).

*/