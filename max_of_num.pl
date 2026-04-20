% Write a PROLOG program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.
% Case 1: X is greater or equal → X is max
max(X, Y, X) :-
    X >= Y.

% Case 2: Y is greater → Y is max
max(X, Y, Y) :-
    Y > X.

/*QUERIES TO RUN
 * max(5, 3, M).
 * max(2, 7, M).
 * max(4, 4, M).
 */
