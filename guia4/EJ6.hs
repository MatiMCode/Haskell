--problema sumaDigitos (x : Z):Z{
--   requiere{x>0}
--   asegura {res = suma de todos los digitos de un numero}
--}


sumaDigitos :: Int -> Int
sumaDigitos n | n==0 =0
              | n>0 = mod n 10 + sumaDigitos(div n 10)