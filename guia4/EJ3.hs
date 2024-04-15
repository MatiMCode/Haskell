--problema esDivisible (x,y,Z):Bool {
--      requiere{true}
--      asegura {res = true si x es divisible por y }
--}

--OMG SON DOS NUMEROS NATURALES LES GOOOO

esDivisible :: Int -> Int -> Bool
esDivisible x y | (x >= y) = esDivisible (x-y) y
                | (x < y) && (x > 0) = False
                | (x == 0) = True