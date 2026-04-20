% Write a PROLOG program to implement reverse(L, R) where List L is original and List R is reversed list.
% Base case: empty list
reverse([], []).

% Recursive case
reverse([H|T], R) :-
    reverse(T, RT),
    append(RT, [H], R).

/*QUERIES TO RUN
 * reverse([1,2,3], R).
 * reverse([], R).
 */
