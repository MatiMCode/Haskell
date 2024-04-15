cantDigitos :: Int -> Int
cantDigitos n | n < 10 = 1
              | otherwise = cantDigitos(div n 10) +1

iesimoDigito :: Int -> Int -> Int
iesimoDigito numero lugar | lugar==cantDigitos(numero) = mod numero 10 --ultimo lugar   
                          | otherwise =mod (div numero (10^(cantDigitos(numero)-lugar))) 10


--asaqaaaa puedo directamente copiar lo que decia en el coso lpm