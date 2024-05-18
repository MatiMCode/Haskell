--1 formula es (presidente, vicepresidente)

--1.1 votos en blanco
-- le llegan formulas [(stringxstring)] y votos [Z] y cantTotalDeVotos [z]

--cant de votos tiene a los que votaron en blanco

--votos en blanco entonces va a ser la suma de todos los votos menos canttotal de votos

--ya de por si lo que te entra son cosos validas

-- la lista de formulas tiene igual elementos a la de votos
-- 

contarVotos :: [Int] -> Int
contarVotos [] = 0
contarVotos (x:[]) = x
contarVotos (x:xs) = x + contarVotos xs


votosEnBlanco :: [(String,String)] -> [Int] -> Int -> Int
votosEnBlanco [] [] n = n
votosEnBlanco (x:[]) (y:[]) n = n - y   --si solo tenes una formula y una cierta cantidad de votos para esa formula, le restas
votosEnBlanco (x:xs) (y:ys) n = n - (contarVotos (y:ys)) 


----------------------------------------------------------------

--formulas validas

--agarra una secuencia de formulas, devuelve true o false

--no puede haber (roberto, roberto)
--no puede haber (roberto,al)   (te,roberto) 
--no puede haber (ropberto al)  ( roberto te)
--no puede repetirse el vicepresidente tampoco


nombresRepetidosEnLista :: (String,String) -> [(String,String)] -> Bool
nombresRepetidosEnLista (x,y) [] = False
nombresRepetidosEnLista (x,y) ((p,v):xs) |  x == p || x == v || y == p || y == v = True
                                         | otherwise = nombresRepetidosEnLista (x,y) xs


formulasValidas :: [(String,String)] -> Bool
formulasValidas ((x,y):[]) | x == y = False
                           | otherwise = True
formulasValidas ((x,y):xs) | x == y = False
                           | otherwise = not(nombresRepetidosEnLista (x,y) xs) && formulasValidas xs

------------------------------------------------------------------------------------

--porcentaje de votos
--entra: presidente STRING, formulas SEQ, votos: num : R

votosDePresidente :: String -> [(String,String)] -> [Int] -> Int
votosDePresidente presidente ((p,v):[]) (votos:[]) | p == presidente = votos
                                                   | otherwise = 0
votosDePresidente presidente ((p,va):xs) (votos:vs) | p == presidente = votos
                                                    | otherwise = votosDePresidente presidente xs vs

porcentajeDeVotos :: String -> [(String,String)] -> [Int] -> Float
porcentajeDeVotos presidente ((p,v):vs) votos = (fromIntegral (votosDePresidente presidente ((p,v):vs) votos)) / (fromIntegral (contarVotos votos)) *100
porcentajeDeVotos presidente ((p,v):[]) (votos : []) = fromIntegral 100

--------------------------------------------------------------------------------------