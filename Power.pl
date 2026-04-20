% Write a PROLOG program to implement power (Num, Pow, Ans) : where Num is raised to the power Pow to get Ans.

% Base case: anything power 0 is 1
power(_, 0, 1).

% Recursive case
power(X, Y, R) :-
    Y > 0,
    Y1 is Y - 1,
    power(X, Y1, R1),
    R is X * R1.

/*QUERIES TO RUN
 * power(2, 3, R).
 * power(5, 0, R).
 */
