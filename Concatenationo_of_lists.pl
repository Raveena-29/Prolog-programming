%Write a PROLOG program to implement conc(L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.
% Base case:
% If first list is empty, result is the second list
conc([], L, L).

% Recursive case:
% Take head of first list and keep adding to result
conc([H|T], L2, [H|R]) :-
    conc(T, L2, R).

/*QUERIES TO RUN
 conc([1,2], [3,4], R).
 conc([], [5,6], R).
 */
