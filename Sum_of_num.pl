% Write a PROLOG program to calculate the sum of two numbers.
% Rule to calculate sum
sum(X, Y, S) :-
    S is X + Y.

/*QUERIES TO RUN
 * sum(3, 4, S).
 * sum(10, 5, S).
 * X + Y = 10.
 * sum(10, 25, X).
 */
