parent(marie, robert).
parent(paul, robert).
parent(paul, emma).
parent(robert, vickie).
parent(robert, anne).
parent(robert, gail).
parent(robert, stan).
parent(stan, jack).
femme(marie).
femme(emma).
femme(gail).
femme(anne).
femme(vickie).

soeur(X,Y) :- parent(Z,X), parent(Z,Y), femme(X).
