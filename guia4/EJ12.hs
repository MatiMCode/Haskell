--a1= 2
--an= 2+ 1/a(n-1)

an :: Int -> Float
an n | n==1 = 2
     | otherwise = 2 + 1/an(n-1)

raizDe2Aprox :: Int -> Float
raizDe2Aprox n | n==1 = 1
               | otherwise = (an n )-1