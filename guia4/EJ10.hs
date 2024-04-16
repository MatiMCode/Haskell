f1 :: Int -> Int
f1 indice | indice == 0 = 1
          | otherwise = 2^indice + f1 (indice-1)

f2 :: Int -> Float -> Float
f2 indice q | indice == 0 = 1
            | indice == 1 = q
            | otherwise = q^indice + f2 (indice-1)  q

f3 :: Int -> Float -> Float
f3 indice q | indice == 0 = 1
            | indice == 1 = q^(indice*2) + q
            | otherwise = q^(indice*2) + q^((indice*2)-1) + f3 (indice-1)  q

f4 :: Int -> Float -> Float
f4 n q | n<1 = 0
       | 