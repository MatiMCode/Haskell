sumaPotencias :: Int -> Int -> Int -> Int
sumaPotencias q n m | n==1 = q^(m)
                    | m==1 = q^(n)
                    | otherwise = q^((sumaDeLosAnteriores n)+(sumaDeLosAnteriores m))

sumaDeLosAnteriores :: Int -> Int
sumaDeLosAnteriores n | n==1 =1
                      | otherwise = n + (sumaDeLosAnteriores (n-1))