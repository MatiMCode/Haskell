--es una doble suma aaaa

serie2 :: Int -> Int -> Int
serie2 m i | m==1 = i
           | otherwise = (i^m) + (serie2 (m-1) i)

serie1 :: Int -> Int -> Int 
serie1 n m | n==1 = serie2 m n
           | otherwise = (serie2 m n) + (serie1 (n-1) m)