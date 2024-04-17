
--a)
eAprox :: Int -> Float
eAprox a | a==0 = 1
         | otherwise = (1/fromIntegral(factorial a)) + (eAprox(a-1))

--fromIntegral porque si o si necesitas pasar de un int a float un numero que vayas a poner abajo del 1

factorial :: Int -> Int
factorial a | a==0 =1
            | otherwise = a * (factorial (a-1))

--b) 

e :: Float
e = eAprox 10