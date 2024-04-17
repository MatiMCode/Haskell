serie2 :: Int -> Int -> Float
serie2 m p | m==1 = p
           | otherwise = p/m + (serie2 (m-1) p)

serie1 :: Int -> Int -> Float
serie1 n m | n==1 = serie2(m,1)
           | otherwise = (serie2 m n) + (serie1 (n-1) m)