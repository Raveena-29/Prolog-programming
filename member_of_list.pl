% Write a PROLOG program to implement memb(X, L): to check whether X is a member of L or not.

% Case 1: element is the head of the list
member(X, [X|_]).

% Case 2: check in the tail
member(X, [_|T]) :-
    member(X, T).

/*QUERIES TO RUN
 * member(2, [1,2,3]).
 * member(5, [1,2,3]).
 * member(X, [1,2,3]).
 */
