--1)
pertenece :: Eq(a) => a -> [a] -> Bool
pertenece _ [] = False
pertenece n (x:xs) | x==n = True
                   | otherwise = pertenece n (xs)
--2)

todosIguales :: Eq(a) => [a] -> Bool
todosIguales [] = False
todosIguales (x:[]) = True
todosIguales (x:xs) = (x == head xs) && todosIguales xs

--3) 
todosDistintos :: Eq(a) => [a] -> Bool
todosDistintos [] = True
todosDistintos (x:[]) = True
todosDistintos (x:xs) = ((pertenece x xs) == False) && todosDistintos xs


--4)

hayRepetidos :: Eq(a) => [a] -> Bool
hayRepetidos  [] = False
hayRepetidos (x:xs) = pertenece x xs || hayRepetidos xs

--5)

quitar :: Eq(a) => a -> [a] -> [a]
quitar n [] = [] 
quitar n (x:xs) | n==x = xs
                | otherwise = x : quitar n xs

--6) quitar todos 

quitarTodos :: Eq(a) => a -> [a] -> [a]
quitarTodos n [] = []
quitarTodos n (x:xs) | pertenece n (x:xs) = quitarTodos n (quitar n (x:xs))
                     | otherwise = (x:xs)

--7) elimina solo la segunda aparicion de un elemento, elimina las adicionales

eliminarRepetidos :: Eq(a) => [a] -> [a]
eliminarRepetidos [] = []
eliminarRepetidos (x:[]) = [x]
eliminarRepetidos (x:xs) | (pertenece x xs)==True = x : eliminarRepetidos (quitarTodos x xs)
                         | (pertenece x xs)==False = x : eliminarRepetidos (xs)

--8) mismosElementos chequea si dos listas son iguales

mismosElementos :: Eq(a) => [a] -> [a] -> Bool
mismosElementos [] [] = True
mismosElementos (x:[]) (m:ms) = pertenece x (m:ms)
mismosElementos (x:xs) (m:ms) = pertenece x (m:ms) && mismosElementos xs (m:ms)

--capicua    literalmente es tipo usar reverso y compararlos me da bastante paja