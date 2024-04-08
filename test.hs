--ghci despues :l test.hs para CARGAR el archivo nomas, despues escribir doubleMe
--quit para salir
--  :r es para recargar el coso, lo pones en ghci no en main

doubleMe :: Int -> Int
doubleMe x = x + x

signo :: Int -> Int
signo x | x > 0 = 1   --este signito significa que estas haciendo cosas logicas, tipo preposiciones
        | x < 0 = -1
        | otherwise = 0