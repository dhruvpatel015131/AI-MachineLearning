bigger(elephant,horse).
bigger(horse,dog).
bigger(dog,cat).

is_bigger(X,Y):-bigger(X,Y).

is_bigger(X,Y):-bigger(X,Z),is_bigger(Z,Y).
