--1) sumatoria 

sumatoria :: [Int] -> Int
sumatoria (x:[]) = x
sumatoria (x:xs) = x + sumatoria xs

--2) productoria

productoria :: [Int] -> Int
productoria (x:[]) = x
productoria (x:xs) = x * sumatoria xs

--3) maximo

compararNums :: Int -> Int -> Int
compararNums n m | n>m = n
                 | otherwise = m

maximo :: [Int] -> Int
maximo (x:[]) = x
maximo (x:xs) = compararNums x (maximo xs)

--4) sumarN

sumarN :: Int -> [Int] -> [Int]
sumarN n (x:[]) = [x+n]
sumarN n (x:xs) = x+n : (sumarN n xs)

--5) sumar el primero

sumarElPrimero :: [Int] -> [Int]
sumarElPrimero (x:xs) = sumarN x (x:xs)

--6) sumarElUltimo

ultimo :: [t] -> t
ultimo (x:[]) = x
ultimo (x:xs) = ultimo xs


sumarElUltimo :: [Int] -> [Int]
sumarElUltimo (x:xs) = sumarN (ultimo xs) (x:xs)

--9)

quitar :: Eq(a) => a -> [a] -> [a]
quitar n (x:xs) | n==x = xs
                | otherwise = x : quitar n xs


ordenar :: [Int] -> [Int]
ordenar [] = []
ordenar (x:[]) = [x]
ordenar (x:xs) = maximo (x:xs) : ordenar (quitar (maximo (x:xs)) (x:xs))