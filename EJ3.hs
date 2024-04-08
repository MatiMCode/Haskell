maximo3 :: Int -> Int -> Int -> Int
maximo3 a b c | (a>=b) && (a>c) = a
              | (b>a) && (b>c) =b
              | otherwise = c

--2 2 1