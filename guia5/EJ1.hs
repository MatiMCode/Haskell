--1)

longitud :: [t] -> Int
longitud [] = 0
longitud (x:[]) = 1
longitud (x:xs) = 1 + longitud xs

--2) 

ultimo :: [t] -> t
ultimo (x:[]) = x
ultimo (x:xs) = ultimo xs

--3) es sacar el ultimo

principio :: [t] -> [t]
principio (x:[]) = [] --si esta en el ultimo, lo saca
principio (x:xs) = x : principio xs 

--4) hacer el reverso

reverso :: [t] -> [t]
reverso [] = []
reverso (x:[]) = [x]
reverso (x:xs) = ultimo xs : reverso (principio(x:xs))

