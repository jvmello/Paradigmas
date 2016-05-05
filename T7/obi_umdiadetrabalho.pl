/* Um dia de trabalho
	http://olimpiada.ic.unicamp.br/passadas/OBI2008/res_fase1_inic/iniciacao_n1/pdf/provas/ProvaOBI2008_inic_f1n1.pdf
	Questões de 16 a 20, página 4.
*/

regra1(E) :- nth0(Iw, E, w),
			 nth0(Ig, E, g),
			 nth0(It, E, t),
        	 Dif1 is (Iw-Ig),
       		 Dif1 > 0,
       		 Dif2 is (Iw-It),
       		 Dif2 > 0.

regra2(E) :- nth0(Is, E, s),
			 nth0(Iw, E, w),
        	 Dif is (Is-Iw),
        	 Dif > 0.

regra3(E) :- nth0(Is, E, s),
			 nth0(Ir, E, r),
        	 Dif is (Is-Ir),
        	 Dif > 0.

tarefa(E) :- E = [_, _, _, _, _, _], permutation([r, b, g, s, w, t], E), 
	regra1(E), regra2(E), regra3(E).

/*
Questão 16. Qual das opções abaixo é uma lista completa
e correta da ordem de realização das tarefas, da
primeira à última?
(A) G, R, T, S, W, B
(B) G, T, W, S, R, B
(C) B, G, T, R, W, S
(D) G, B, W, R, T, S
(E) T, W, R, G, S, B

?- tarefa([g, r, t, s, w, b]).
?- tarefa([g, t, w, s, r, b]).
?- tarefa([b, g, t, r, w, s]). <- Correta
?- tarefa([g, b, w, r, t, s]).
?- tarefa([t, w, r, g, s, b]).
*/

/*
Questão 17. Qual das seguintes opções é sempre verdadeira?
(A) S é realizada por último.
(B) G é realizada primeiro. <- Correta
(C) S é realizada após B.
(D) S é realizada após G.
(E) W é realizada após R.

?- tarefa(L).
*/

/*
Questão 18. Qual é o número total de possíveis tarefas
que podem ser realizadas em primeiro lugar?
(A) 1
(B) 2
(C) 3
(D) 4 <- Correta(Apenas r, b, g e t podem ser realizadas em primeiro lugar)
(E) 5

?- tarefa(L).
*/

/*
Questão 19. Se R é a quinta tarefa a ser realizada
então qual das opções é verdadeira?
(A) W é a quarta tarefa a ser realizada.
(B) S é a sexta tarefa a ser realizada. -> Correta(F = s em todas as possibilidades)
(C) B é a segunda tarefa a ser realizada.
(D) T é a terceira tarefa a ser realizada.
(E) G é a primeira tarefa a ser realizada.

?- tarefa([A,B,C,D,r,F]).

*/

/*
Questão 20. Qual das opções abaixo é a posição mais
tardia em que a tarefa T pode ser realizada?
(A) Segundo lugar
(B) Terceiro lugar
(C) Quarto lugar <- Correta dentre todas as possibilidades
(D) Quinto lugar
(E) Sexto lugar

?- tarefa(L).
*/