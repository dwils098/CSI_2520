combat(paul,pierre).
combat(jean,simon).
combat(jean,pierre).
alliés(X,Y) :- combat(X,Z),combat(Y,Z).
