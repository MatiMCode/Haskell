serie1 :: Int -> Int -> Float
serie1 q p | q==1 = fromIntegral p
           | otherwise = (fromIntegral p)/(fromIntegral q) + (serie1 (q-1) p)

serie2 :: Int -> Int -> Float
serie2 p q | p==1 = serie1 q p 
           | otherwise = (serie1 q p)  + (serie2 q (p-1))