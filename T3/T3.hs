-- T3

-- 1) Retornar o quadrado dos números de uma lista 
retornaQuad :: [Int] -> [Int]
retornaQuad [] = []
retornaQuad lis = (head lis)^2 : retornaQuad (tail lis)

-- 2) Colocar "Sr. " no início de cada elemento da String
colocaSr :: [String] -> [String]
colocaSr [] = []
colocaSr lis = (("Sr. " ++) (head lis)) : colocaSr (tail lis)

-- 3) Conta espaços de uma string
contaEspacos :: String -> Int
contaEspacos [] = 0
contaEspacos lis = if(head lis == ' ') then 1 + contaEspacos (tail lis) else contaEspacos (tail lis)

-- 4) Calcula 3*n^2 + 2/n + 1 para cada elemento da lista
calculaLista :: [Float] -> [Float]
calculaLista [] = []
calculaLista lis = ((\n -> 3*n^2 + 2/n + 1) (head lis)) : calculaLista (tail lis)

-- 5) Seleciona apenas os números negativos de uma lista
selecionaNegativo :: [Float] -> [Float]
selecionaNegativo [] = []
selecionaNegativo lis = if ((head lis) < 0) 
	then ((head lis) : selecionaNegativo (tail lis))
	else selecionaNegativo (tail lis)

-- 6) Retira vogais de uma String
semVogais :: String -> String
semVogais lis = filter(\z -> z/= 'a' && z/= 'e' &&  z/= 'i'  && z/= 'o' && z/='u' && z /= 'A' && z /= 'E' &&  z /= 'I'  && z /= 'O' && z /='U') lis

-- 7) Retira vogais de uma String recursivamente
semVogaisR :: String -> String
semVogaisR [] = []
semVogaisR lis = 
	if elem (head lis) "aeiouAEIOU"
	then semVogaisR (tail lis)
	else (head lis) : semVogaisR (tail lis)

-- 8) Substitui letras de string por '-'
substituiLetras :: String -> String
substituiLetras [] = []
substituiLetras lis = map (\l -> if l /=' ' then '-'; else l) lis

-- 9) Substitui letras de string por '-' recursivamente
substituiLetrasR :: String -> String
substituiLetrasR [] = []
substituiLetrasR (l:ls) = 
    if l /= ' ' 
    then '-' : substituiLetrasR ls
    else l : substituiLetrasR ls

-- 10) Verifica a ocorrência de um caractere em uma String
charFound :: Char -> String -> Bool
charFound _ "" = False
charFound l lis = 
	if l == (head lis) 
	then True 
	else charFound l (tail lis)

-- 11) Desloca pontos do plano cartesiano em 2 unidades
translate :: [(Float, Float)] -> [(Float, Float)]
translate [] = []
translate lis = (fst(head lis) + 2, snd(head lis) + 2) : translate(tail lis)

-- 12) Produto de 2 listas recursivamente
prodListaR :: (Num a) => [a]->[a]->[a]
prodListaR _ [] = []
prodListaR [] _ = []
prodListaR (x:xs) (y:ys) = (x * y) : (prodListaR xs ys)

-- 13) Produto de 2 listas com função de alta ordem
prodLista :: [Int] -> [Int] -> [Int]
prodLista lis1 lis2 = zipWith(*) lis1 lis2

-- 14) Retorna tabela com de 1 a n com números e seus quadrados
geraTabela :: Int -> [(Int, Int)]
geraTabela 0 = []
geraTabela n = aux 1 n

aux :: Int -> Int -> [(Int, Int)] -- Função auxiliar para mostrar de 1 a n
aux 0 n = []
aux m n = if (m <= n)
    then (m, m^2) : aux (m+1) n
    else []