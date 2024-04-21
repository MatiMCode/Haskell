--mayor digito par, basicamente pasar por todos los cosos


--div 10 era para sacar el ultrimo
-- mod num 10 era para solo agarrar el ultimo

--vamos a ir chequeando por 2 

esPar :: Int -> Bool
esPar n = mod n 2 == 0


digitos :: Int -> Int
digitos n | n <=9 = 1
          | otherwise = 1 + digitos (div n 10)

compararNums :: Int -> Int -> Int
compararNums n m | n>m = n
                 | otherwise = m


numeroMayorPar :: Int -> Int
numeroMayorPar n | (digitos n == 1) && (esPar n == True) = n ---si solo queda un digito y ese digito es par, devuelve dese
                 | (digitos n == 1) && (esPar n == False) = -1 -- si solo queda un digito y ese es impar, devuelve cero
                 | (esPar n == False) = numeroMayorPar (div n 10) -- si n no es par, osea el ultimo digito es impar, vuelve a correr la funcion pero ahora sin el digito
                 | otherwise = compararNums (mod n 10) (numeroMayorPar (div n 10)) --compara el ultimo digito (si o si es par) con el anteultimo digito