harmonic(1,1).
harmonic(N,X):- N1 is N-1, harmonic(N1,X1), X is X1 + 1/N.


harmonic2(0,0). 
harmonic2(X,Y):-X>0, X1 is X-1, harmonic2(X1,Y1), X is X1+1/X.
