premier([X|_],X).

dernier([X],X).
dernier([_|L],X):- dernier(L,X).

compte([],0).
compte([_|R],N):- compte(R,N1), N is N1+1, N>0.

occurence([],X,0).
occurence([X|T],X,Y):- occurence(T,X,Z), Y is Z+1.
occurence([X1|T],X,Z):- X1\=X, occurence(T,X,Z).

main :-
	open('/Users/danywilson/Desktop/CSI_2520/CSI_2520/Lab_4/fruits.txt', read, Str),
        read_file(Str,Lines),    close(Str),
	write(Lines), nl.

read_file(Stream,[]) :-
	at_end_of_stream(Stream).

read_file(Stream,[X|L]) :-
	\+ at_end_of_stream(Stream),
	read(Stream,X),
	read_file(Stream,L).

sorting([A|B], Sorted) :- sorting(B, SortedTail), insert(A, SortedTail, Sorted).
sorting([], []).

insert(A, [B|C], [B|D]) :- A @> B, !, insert(A, C, D).
insert(A, C, [A|C]).


perm([],[]).
perm(L,[H|T]) :-
 append(V,[H|U],L),
 append(V,U,W), perm(W,T).
