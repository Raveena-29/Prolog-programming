% Write a PROLOG program to implement sumlist(L, S) so that S is the sum of a given list L.

% Base case: sum of empty list is 0
sumlist([], 0).

% Recursive case
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is H + S1.

/*QUERIES TO RUN
 * sumlist([1,2,3,4], S).
 * sumlist([], S).
 */
