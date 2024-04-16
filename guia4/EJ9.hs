--problema esCapicua    la cosa va ser ir chequeando el primero con el ultimo

--mod numero 10 te da el ultimo numero
--el primer numero va a ese numero dividido 10 elevado a la cantidad de digitos que tiene -1

--ahora le tengo que sacar el ultimo numero y el primero

cantDigitos :: Int -> Int
cantDigitos n | n < 10 = 1
              | otherwise = cantDigitos(div n 10) +1

esCapicua :: Int -> Bool
esCapicua n | cantDigitos(n) == 1 = True
            | otherwise = (n == funcionInversa n)



funcionInversa :: Int -> Int
funcionInversa n | cantDigitos(n) == 1 = n
                 | otherwise = (mod n 10) * 10^(cantDigitos(n)-1) + funcionInversa(div n 10)






--aa == mod n 10^(cantDigitos(n)-1) ---aca le sacas el primer numero

--div aa 10 10^(cantDigitos(aa)-2)


---AAA PRIMERO LE HACES UN MOD POR 10 ELEVADO A LA CANTIDAD DE DIGITOS MENOS UNO, AHI LE SACAS EL PRIMERO
--- DESPUES ESE NUMERO LO DIVIDIS POR 10 ELEVADO A LA CANTIDAD DE DIGITOS MENOS 1