--hayQueCodificar      entra un:
-- char, una secuencia de charxchar, da bool
--en la charxchar no hay repetidos entre las primeras ni segundas componentes
--es true si solo si c es igual a el primer componente de4 alguno de mapeo

-- [('a','b'),('b','c'),('c','d'),('d','e')]
-- "hola"   

hayQueCodificar :: Char -> [(Char,Char)] -> Bool
hayQueCodificar c ((x,y):[]) = c == x
hayQueCodificar c ((x,y):xs) | c ==x = True
                             | otherwise = hayQueCodificar c xs


-- cuantas veces hay que codificar

-- entra char, frase (string), mapeo [(charxchar)]  sale un Z
-- c pertenece a frase

--basicamente cuantas veces reemplazas la c en frase

cuantasVecesApareceUnaLetra :: Char -> [Char] -> Int
cuantasVecesApareceUnaLetra c (x:[]) | x == c = 1
                                     | otherwise = 0
cuantasVecesApareceUnaLetra c (x:xs) | x == c = 1 + (cuantasVecesApareceUnaLetra c xs)
                                     | otherwise = cuantasVecesApareceUnaLetra c xs

cuantasVecesHayQueCodificar :: Char -> [Char] -> [(Char,Char)] -> Int
cuantasVecesHayQueCodificar c frase ((x,y):[]) | x == c = cuantasVecesApareceUnaLetra c frase
                                               | otherwise = 0
cuantasVecesHayQueCodificar c frase ((x,y):xs) | hayQueCodificar c ((x,y):xs) = cuantasVecesApareceUnaLetra c frase
                                               | otherwise = 0

---laQueMasHayQueCodificar    
-- entra una frase, mapeo

-- frase > 0, hay al menos un c que pertenece a frase y que esta en el mapeo
-- res = el caracter que mas aparece
-- si hay 2 que tienen lo mismo, devuelve el primero que aparece




--   deberias ir chequeando cada letra, si la letra existe comparar cuantas veces aparece
--   si la letra no existe en el mapeo, podria saltearmela directamente

conteoDeCodificadores :: [Char] -> [Char] -> [(Char,Char)] -> Char
conteoDeCodificadores palabraSave (x:[]) mapeo | hayQueCodificar x mapeo = x
                                               | otherwise = ' '
conteoDeCodificadores palabraSave (x:xs) mapeo | hayQueCodificar x mapeo && ((cuantasVecesApareceUnaLetra x palabraSave) >= (cuantasVecesApareceUnaLetra (conteoDeCodificadores palabraSave xs mapeo) palabraSave)) = x
                                               | otherwise = conteoDeCodificadores palabraSave xs mapeo

laQueMasHayQueCodificar :: [Char] -> [(Char,Char)] -> Char
laQueMasHayQueCodificar palarba [] = ' '
laQueMasHayQueCodificar [] mapeo = ' '
laQueMasHayQueCodificar palabra mapeo = conteoDeCodificadores palabra palabra mapeo

--- codificarFrase
-- entra la frase, el mapeo tira otra frase

mapeo = [('a','b'),('b','c'),('c','d'),('d','e')] :: [(Char,Char)]

codificarPalabra :: Char -> [(Char,Char)] -> Char
codificarPalabra x ((p1,p2):[]) | x == p1 = p2
                               | otherwise = x
codificarPalabra x ((p1,p2):xs)| x == p1 = p2
                               | otherwise = codificarPalabra x xs


codificarFrase :: [Char] -> [(Char,Char)] -> [Char]
codificarFrase (x:[]) mapeo = [codificarPalabra x mapeo]
codificarFrase (x:xs) mapeo = [codificarPalabra x mapeo] ++ (codificarFrase xs mapeo)