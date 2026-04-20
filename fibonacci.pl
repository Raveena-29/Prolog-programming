% Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of the Fibonacci series
% Base cases
fibonacci(0, 0).
fibonacci(1, 1).

% Recursive case
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

/*QUERIES TO RUN
 * fibonacci(5, F).
 * fibonacci(6, F).
 */
