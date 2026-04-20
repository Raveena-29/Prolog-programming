% Write a PROLOG program to implement insert(I, N, L, R) 
% that inserts an item I into Nth position of list L to generate a list R. 

% Base case: insert at position 1 (beginning)
insert(X, 1, L, [X|L]).

% Recursive case
insert(X, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(X, N1, T, R).

/*QUERIES TO RUN
 * insert(a, 2, [b,c,d], R).
 * insert(x, 1, [1,2,3], R).
 * insert(z, 4, [a,b,c], R).
 */
