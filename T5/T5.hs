import Data.Char

-- 1)
addSuffix :: String -> [String] -> [String]
addSuffix suf lis = [x ++ suf | x <- lis]

-- 2)
countShorts :: [String] -> Int
countShorts [] = 0
countShorts lis =  if(length (head lis) < 5) then 1 + countShorts (tail lis) else countShorts (tail lis)

-- 3)
countShortsls :: [String] -> Int
countShortsls lis = length [x | x <- lis, (length x) < 5]

-- 4)
ciclo :: Int -> [Int] -> [Int]
ciclo 0 lis = []
ciclo n lis = lis ++ ciclo (n-1) lis

--5)
numera :: [String] -> [(Int,String)]
numera [] = []
numera lis = aux 1 lis

aux :: Int -> [String] -> [(Int, String)] -- Auxiliar para ter ordem crescente na tupla
aux _ [] = []
aux n lis = (n, head lis) : aux (n+1) (tail lis)

-- 6)
-- 	 a) [(2,3),(2,5),(4,5)] (pega os X pares de 1 a 5 e os Y ímpares entre x+1 e 6, retornando os pares que as duas condições são satisfeitas)
--	 b) ["lazyfrog","lazydog","bigfrog","bigdog"] (concatena todos os elementos das duas listas entre si)
--	 c) p-r-l-l-p-p-d- (substitui todas as vogais da string "paralelepipedo" pelo caractere '-')

-- 7)
crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct [] _ = []
crossProduct _ [] = []
crossProduct (x:xs) ys = map (\y -> (x,y)) ys ++ crossProduct xs ys

-- 8)
genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects n (x, y) = [((fromIntegral x)+xs, fromIntegral y, 5.5, 5.5) | xs <- [0.0, 5.5..5.5*(fromIntegral n-1)]]

-- 9)
func :: [(Int, Int)] -> ([Int], [Int])
func [] = ([], [])
func (x:xs) = (fst x:(fst (func xs)), snd x:(snd (func xs)))

-- 10)
func2 :: [(Int, Int)] -> ([Int], [Int])
func2 [] = ([], [])
func2 lis = ([fst x | x <- lis], [snd x | x <- lis])

-- 11)
func3 :: [(Int, Int)] -> ([Int], [Int])
func3 [] = ([], [])
func3 lis = (map fst lis, map snd lis)

-- 12)
isCpfOk :: [Int] -> Bool
isCpfOk cpf = 
  let 
  -- calcula primeiro digito
      digitos1 = take 9 cpf
      dv1 = auxCpf 11  digitos1

      -- calcula segundo digito
      digitos2 = digitos1 ++ [dv1]
      dv2 = auxCpf 11  digitos2
   in dv1 == cpf !! 9 && dv2 == cpf !! 10

main = do
  let cpf = "12345678909"
      digitos = (map digitToInt cpf)
      result = isCpfOk digitos
  putStrLn (show result)

auxCpf :: Int -> [Int] -> Int
auxCpf n dig = if expr < 2 then 0 else 11 - expr
	where
		expr = (sum $ zipWith (*) dig [n,n-1..2]) `mod` 11