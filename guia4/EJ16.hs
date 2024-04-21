--primo es que es divisible por si mismo y 1, ej 1 2 3 5 7 11

--a) menor divisor de 6 por ejemplo es 2
-- 7 te deberia tirar 7 de una

menorDivisor :: Int -> Int 
menorDivisor n = menorDivisorEmpezandoPor 2 n 



menorDivisorEmpezandoPor :: Int -> Int -> Int
menorDivisorEmpezandoPor i n | (i<=n) && (mod n i == 0) = i 
                             | otherwise = menorDivisorEmpezandoPor (i+1) n

--b) funcion esPrimo :: Integer -> Bool

esPrimo :: Int -> Bool
esPrimo 1 = True
esPrimo n = (menorDivisorEmpezandoPor 2 n) == n 

--c) sonCoprimos :: Integer -> Integer -> Bool

sonCoprimos :: Int -> Int -> Bool
sonCoprimos 1 1 = True
sonCoprimos n m = not ((mod m (menorDivisorEmpezandoPor 2 n)) == 0) || ((mod n (menorDivisorEmpezandoPor 2 m)) == 0) 


--d) nEsimoPrimo::Int Int  devuelve el nesimo primo n>=1

nEsimoPrimo :: Int -> Int
nEsimoPrimo n | esPrimo n = n
              | otherwise = nEsimoPrimo (n-1)

