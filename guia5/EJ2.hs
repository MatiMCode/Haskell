
--1)
pertenece :: Eq(a) => a -> [a] -> Bool
pertenece _ [] = False
pertenece n (x:xs) | x==n = True
                   | otherwise = pertenece n (xs)

--4)

hayRepetidos :: Eq(a) => [a] -> Bool
hayRepetidos  [] = False
hayRepetidos (x:xs) = pertenece x xs || hayRepetidos xs

--5)

quitar :: Eq(a) => a -> [a] -> [a]
quitar n (x:xs) | n==x = xs
                | otherwise = x : quitar n xs