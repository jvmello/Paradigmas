-- 1) Soma dos quadrados de dois números x e y:
somaQuad :: Int -> Int -> Int
somaQuad x y = x^2 + y^2

-- 2) Verificar se duas listas possuem o mesmo primeiro elemento:
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = if ((head lis1) == (head lis2)) then True else False

-- 3) Colocar "Sr" ao início dos nomes da lista:
colocaSr :: [String] -> [String]
colocaSr lis = map ("Sr. " ++) lis

-- 4) Retorna o número de espaços da string:
contaEspacos :: String -> Int
contaEspacos lis = length(filter(==' ') lis)

-- 5) Calcula 3*n^2 + 2/n + 1 para cada número n da lista
calculaLista :: [Float] -> [Float]
calculaLista lis = map (\n -> 3*n^2 + 2/n + 1) lis

-- 6) Seleciona apenas os elementos negativos de uma lista
listaNegativos :: [Float] -> [Float]
listaNegativos lis = filter (<0) lis

-- 7) Seleciona apenas elementos entre 1 e 100
listaUmaCem :: [Float] -> [Float]
listaUmaCem lis = filter(\n -> n>0 && n<101) lis

-- 8) Seleciona apenas quem nasceu depois de 1970
lista70 :: [Int] -> [Int]
lista70 lis = filter(\n -> n < (2016 - 1970)) lis

-- 9) Seleciona apenas número pares
listaPares :: [Int] -> [Int]
listaPares lis = filter (\n -> mod n 2 == 0) lis

-- 10) Verifica se o caractere está contido na string
charFound :: Char -> String -> Bool
charFound _ "" = False
charFound a lis = if a == (head lis) then True else charFound a (tail lis)

-- 11) takeWhile (<50) [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]

-- 12) Recebe uma lista de nomes e retorna apenas os terminados com a letra 'a'
detectaA :: [String] -> [String]
detectaA lis = filter (\lis -> last lis == 'a' || last lis == 'A') lis