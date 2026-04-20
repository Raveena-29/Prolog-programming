% Write a PROLOG program to implement the family tree and demonstrate the family relationship.
% facts 
male(john).
male(paul).
male(david).
male(mark).

female(mary).
female(lisa).
female(susan).
female(anna).

parent(john, paul).
parent(mary, paul).
parent(john, lisa).
parent(mary, lisa).
parent(paul, david).
parent(susan, david).
parent(paul, anna).
parent(susan, anna).
parent(lisa, mark).

% Rules
father(X, Y) :- parent(X,Y), male(X).
mother(X, Y) :- parent(X,Y), female(X).

brother(X,Y) :- parent(P,X), parent(P,Y), male(X), X\=Y.
sister(X,Y) :- parent(P,X), parent(P,Y), female(X), X\=Y.

grandfather(X,Y) :- parent(X, Z), parent(Z,Y), male(X).
grandmother(X,Y) :- parent(X, Z), parent(Z,Y), female(X).

grandparents(X, Y) :- parent(X, Z), parent(Z, Y).

uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).


/*QUERIES TO RUN
?- father(john, paul).
?- mother(mary, lisa).
?- brother(paul, lisa).
?- sister(lisa, paul).
?- grandfather(john, david).
?- grandmother(mary, anna).
?- uncle(paul, mark).
?- grandparent(john, anna).
?- father(john, paul), mother(mary, lisa). (You can combine queries using comma)
?- father(john, paul); mother(mary, lisa). (Use ; (OR condition))
?- father(X, Y). (Prolog will give multiple answers one by one.)
*/
