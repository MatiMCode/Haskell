--si n es algun valor de la secuencia de fibonacci

--f0 = 0
--f1 = 1
--f2 = 1
--f3 = 2
--f4=3
--fn = fn-1 + fn-2

fibonacci :: Int -> Int
fibonacci n | n==0 = 0
            | n== 1 = 1
            | otherwise = fibonacci (n-1) + fibonacci (n-2) 

buscarFibonacci :: Int -> Int -> Bool
buscarFibonacci numeroABuscar maximo | numeroABuscar==0 || numeroABuscar==1 = True
                                     | maximo==0=False
                                     | otherwise = ((fibonacci maximo) == numeroABuscar) || (buscarFibonacci numeroABuscar (maximo-1))

estaEnFibonacci :: Int -> Bool
estaEnFibonacci n | n==0 || n==1 = True
                  | otherwise = buscarFibonacci n (n*2)



