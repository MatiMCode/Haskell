--ghci despues :l test.hs para CARGAR el archivo nomas, despues escribir doubleMe
-- :quit para salir
--  :r es para recargar el coso, lo pones en ghci no en main

doubleMe :: Int -> Int
doubleMe x = x + x

signo :: Int -> Int
signo x | x > 0 = 1   --este signito significa que estas haciendo cosas logicas, tipo preposiciones
        | x < 0 = -1
        | otherwise = 0 --aaa


--ejercicio 1:

f :: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

g :: Int -> Int
g n |n==8=16
    |n==16=4
    |n==131=1

--h = fog

h :: Int -> Int
h x = f(g x)

k :: Int -> Int
k x = g(f x)