% Write a PROLOG program to implement maxlist(L, M) so that M is the maximum number in the list.

% Base case: only one element → that is maximum
maxlist([X], X).

% Recursive case
maxlist([H|T], M) :-
    maxlist(T, M1),
    ( H > M1 -> M = H ; M = M1 ).

/*QUERIES TO RUN
 * maxlist([3,7,2,9,5], M).
 * maxlist([4], M).
 */
