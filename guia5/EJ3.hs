--3) maximo

compararNums :: Int -> Int -> Int
compararNums n m | n>m = n
                 | otherwise = m

maximo :: [Int] -> Int
maximo (x:[]) = x
maximo (x:xs) = compararNums x (maximo xs)

--9)

quitar :: Eq(a) => a -> [a] -> [a]
quitar n (x:xs) | n==x = xs
                | otherwise = x : quitar n xs


ordenar :: [Int] -> [Int]
ordenar [] = []
ordenar (x:[]) = [x]
ordenar (x:xs) = maximo (x:xs) : ordenar (quitar (maximo (x:xs)) (x:xs))