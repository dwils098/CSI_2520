occurence([],X,0).
occurence([H|T], X, N):-
	(   X =:= H,
	    occurence(T,X,N1),
	    N is N1+1);
	(   X\=H,
	    occurence(T,X,N)).

