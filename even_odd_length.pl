% Write a PROLOG program to implement two predicates evenlength(List) and
% oddlength(List) so that they are true if their argument is a list of even or odd length respectively.
% 
% Base case: empty list has even length
evenlength([]).

% Remove 2 elements at a time
evenlength([_,_|T]) :-
    evenlength(T).

% Base case: single element → odd
oddlength([_]).

% Remove 2 elements at a time
oddlength([_,_|T]) :-
    oddlength(T).

/*QUERIES TO RUN
 * evenlength([1,2,3,4]).
 * evenlength([1,2,3]).
 * oddlength([1,2,3]).
 * oddlength([1,2,3,4]).
 */
