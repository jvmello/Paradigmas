/* Combate à Dengue
	http://olimpiada.ic.unicamp.br/passadas/pdf/provas/ProvaOBI2009_inic_f1n2.pdf
	Questões de 1 a 5, página 1.
*/

regra1(E) :- nth0(0, E, f).
regra1(E) :- nth0(1, E, f).
regra1(E) :- nth0(2, E, f).

regra2(E) :- nextto(h, g, E).

regra3(E) :- nth0(1, E, l).
regra3(E) :- nth0(2, E, l).
regra3(E) :- nth0(3, E, l).
regra3(E) :- nth0(4, E, l).
regra3(E) :- nth0(5, E, l).

regra4(E) :- nth0(0, E, m).
regra4(E) :- nth0(6, E, m).

regra5(E) :- nth0(4, E, p).
regra5(E) :- nth0(5, E, p).
regra5(E) :- nth0(6, E, p).

% Regras combinadas
combate(E) :- E = [_, _, _, _, _, _, _], permutation([f, g, h, l, m, p, t], E),
    regra1(E), regra2(E), regra3(E), regra4(E), regra5(E).

/*
Questão 1. Qual das seguintes opções é uma lista completa e correta da 
ordem que as sete casas devem ser visitadas?
(A) F, T, H, L, P, G e M.
(B) H, G, F, L, T, P e M.
(C) L, T, F, H, G, M e P.
(D) M, F, D, H, L, G e T.
(E) M, L, H, G, F, P e T.

?- combate([f, t, h, l, p, g, m]).
?- combate([h, g, f, l, t, p, m]). <- Opção correta(B), True
?- combate([l, t, f, h, g, m, p]).
?- combate([m, f, d, h, l, g, t]).
?- combate([m, l, h, g, f, p, t]).
*/

/*
Questão 2. Se em um trecho do percurso visitarmos as casas T, L e F, 
exatamente nesta ordem, qual a posição que G foi visitada?
(A) Segunda.
(B) Terceira.
(C) Quarta.
(D) Quinta.
(E) Sexta.

?- combate([t, l, f, A, B, C, D]). (B = G, quinta casa, letra D, única 
									que não retorna "false" pois f está 
									entre as 3 primeiras casas)
?- combate([A, t, l, f, B, C, D]). (False)
?- combate([A, B, t, l, f, C, D]). (False)
?- combate([A, B, C, t, l, f, D]). (False)
?- combate([A, B, C, D, t, l, f]). (False)
*/

/*
Questão 3. Se a casa H é a primeira a ser visitada,
qual a quarta casa a ser visitada?
(A) F.
(B) G.
(C) L. <- Correta
(D) M.
(E) P

?- combate([h, A, B, C, D, E, F]). (Resulta em C = L ou T)
*/

/*
Questão 4. Se a casa P foi visitada em sexto, a casa
H poderia ser visitada em várias posições exceto:
(A) Primeira.
(B) Segunda.
(C) Terceira.
(D) Quarta.
(E) Quinta. <- Correta

?- combate([A, B, C, D, E, h, F]).
*/

/*
Questão 5. Se exatamente uma casa foi visitada entre
F e P, quais possíveis casas são estas?
(A) G e H.
(B) G e T.
(C) H e M.
(D) L e M.
(E) L e T. <- Correta

?- combate([A, B, f, T, p, C, D]). (T = l ou t)
*/