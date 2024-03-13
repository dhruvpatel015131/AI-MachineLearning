male(james1).
male(charles1).
male(charles2).
male(james2).
male(george).
female(catherine).
female(elizabeth).
female(sophia).


parent(james1, charles1).
parent(james1, elizabeth).
parent(charles1, catherine).
parent(charles1, charles2).
parent(charles1, james2).
parent(elizabeth, sophia).
parent(sophia, george1).


mother(M, X) :- parent(M, X), female(M).

father(F, X) :- parent(F, X), male(F).

grandfather(G, X) :- parent(G,Y),parent(Y,X),male(G),write(G),write(' is grandfather of '),write(X),nl.

sibbling(S1, S2) :- parent(X, S1), parent(X, S2).

grandmother(G,X) :- parent(G,Y),parent(Y,X),female(G),write(G),
    write(' is grandmother of '),write(X),nl.
