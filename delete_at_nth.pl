% Write a PROLOG program to implement delete(N, L, R) that removes the element on
% Nth position from a list L to generate a list R.

% Base case: remove first element
delete(1, [_|T], T).

% Recursive case
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).

/*QUERIES TO RUN
 * delete(2, [a,b,c,d], R).
 * delete(1, [1,2,3], R).
 * delete(4, [a,b,c,d], R).
 */
