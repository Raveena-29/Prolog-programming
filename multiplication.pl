% PROLOG program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result.

% Rule to calculate multiplication
multiplication(X, Y, R) :-
    R is X * Y.

/*QUERIES TO RUN
 * multiplication(3, 4, R).
 * multiplication(7, 5, R).
 */
