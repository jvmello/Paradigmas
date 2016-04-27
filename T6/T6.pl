%1)
zeroInit(L) :- [H | T] = L, H = 0.

%2)
has5(L) :- L = [_,_,_,_,_].

%3)
hasN([], 0).
hasN(L, N) :- length(L, X), X =:= N.

%4)
potN0(-1, []) :- !.
potN0(N, L) :- X is 2^N, L = [X | T], Y is N-1, potN0(Y, T).

%5)
zipmult(_, [], []).
zipmult([], _, []).
zipmult([H1 | T1], [H2 | T2], [X | T3]) :- zipmult(T1, T2, T3), X is H1*H2.

%6)
potencias(0, []).
potencias(A, L) :- aux6(0, L, A).

aux6(_, [], 0).
aux6(X, L, A) :- H is 2^X, L = [H | T], Y is X+1, Z is A-1, A > -1, aux6(Y, T, Z).

%7)
positivos([], []).
positivos([H | T] , L) :- H < 0, positivos(T, L).
positivos([H | T] , [H1 | L1]) :- H >= 0, positivos(T, L1).

%8)
mesmaPosicao('', [], []).
mesmaPosicao(A, [H1 | T1], [H2 | T2]) :- A = H1, A = H2.
mesmaPosicao(A, [_ | T1], [_ | T2]) :- mesmaPosicao(A, T1, T2).

%9)
comissao(0, _, []).
comissao(N, [X | T1], [X | T2]) :- N > 0, N1 is N-1, comissao(N1, T1, T2).
comissao(N, [_ | T1], T2) :- N > 0, comissao(N, T1, T2).

%10)
azulejos(0, 0) :- !.
azulejos(NA, NP) :- floor(sqrt(NA), X), R is NA - X^2, azulejos(R, Q), NP is Q+1.
