--a)  prodInt

--problema prodInt (a,b RxR):RxR {
--     requiere {true}
--     asegura {res = la suma del primer elemento de a multiplicado con el primero de b y el segundo elemento de a multiplicado con b}
--
--
--}

prodInt :: (Float,Float) -> (Float,Float)->Float
prodInt a b = (fst a * fst b + snd a * snd b)

----------------------------------------

--b) todoMenor

--problema todoMenor(a,b RxR): Booleano{
--  requiere{true}
--  asegura{res <-> todos los componentes de a son menores a los de b}
--  
--}

todoMenor :: (Float,Float) ->(Float,Float) ->Bool
todoMenor a b = (fst a <fst b) && (snd a < snd b)

--c) distanciaPuntos

--problema distanciaPuntos(a,b RxR): R{
--  requiere {true}
--  asegura {res = raiz cuadrada de (segundo componente de a - primer componente de a al cuadrado mas segundo componente de b - primer componente de b al cuadrado)}
--}

distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos a b = sqrt ((fst b - fst a)**2+(snd b - snd a)**2)

--d) sumaTerna

--problema sumaTerna (a ZxZxZ):Int{
-- requiere{true} 
-- asegura {res = suma de los tres elementos de a}
--}

sumaTerna :: (Int,Int,Int)-> Int
sumaTerna (a,b,c) = a+b+c

--e) sumarSoloMultiplos

--problema sumarSoloMultiplos (a:ZxZxZ, b:Z): Z{
--  requiere{true}
--  asegura{res=suma de solo los elementos de a que son multiplos de b}
--  
--}

sumarSoloMultiplos :: (Int,Int,Int) -> Int -> Int
sumarSoloMultiplos (a,b,c) d | ((mod a d ) ==0 ) && ((mod b d) ==0 ) && ((mod c d) ==0 ) = a+b+c --si los 3 son multiplos
                             | ((mod a d ) /=0 ) && ((mod b d) ==0 ) && ((mod c d) ==0 ) = b+c --si solo b y c son multiplos
                             | ((mod a d ) ==0 ) && ((mod b d) /=0 ) && ((mod c d) ==0 ) = a+c --si solo a y c son multiplos
                             | ((mod a d ) ==0 ) && ((mod b d) ==0 ) && ((mod c d) /=0 ) = a+b --si solo a y b son multiplos
                             | ((mod a d ) ==0 )= a --si solo a es multiplo
                             | ((mod b d ) ==0 )= b --si solo b es multiplo
                             | ((mod c d ) ==0 )= c --si solo c es multiplo

-- f) posPrimerPar

--problema posPrimerPar (a:ZxZxZ):Z{
--  requiere {true}
--  asegura {res = posicion de la terna en donde esta el primer numero par}
--}
--

posPrimerPar :: (Int,Int,Int) -> Int
posPrimerPar (x,y,z) | mod x 2 == 0 = 0
                     | mod y 2 == 0 = 1
                     | mod z 2 == 0 = 2
                     | otherwise = 4

--g) t h) me dan demasiado paja tbh lmaooo
