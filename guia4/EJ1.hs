fibonacci :: Int -> Int
fibonacci n | n==0 = 0
            | n==1 = 1
            | otherwise = fibonacci (n-1) + fibonacci (n-2)


-- 0 si n=0
-- 1 si n=1
-- si no es ni 0 ni 1 va a ser   f(n-1) + f(n-2)