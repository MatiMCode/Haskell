--a)

--contar palabras   [Char] -> Int


"hola" = ['h','o','l','a']

contarPalabras :: [Char] -> Int
contarPalabras (x:[]) = 1
contarPalabras (x:xs) |  x /= ' ' = contarPalabras xs
                      |  otherwise = 1 + contarPalabras xs




-- "hola todo bien"     --->  ["hola","todo","bien"]
---           hasta hola, todo que venia atras lo vas agregando, pero si es un espacio pasas al otro elemento

--        


reconocerPrimerPalabra :: [Char] -> [Char]
reconocerPrimerPalabra (x:[]) = [x]
reconocerPrimerPalabra (x:xs) = x : reconocerPrimerPalabra xs

palabras :: [Char] -> [[Char]]
palabras (x:[]) = [[x]]

--palabras (x:xs) | x == ' ' =



--"h o l a"           "h ola"
--


--   por cada char, si es vacio lo agrega como un elemento separado