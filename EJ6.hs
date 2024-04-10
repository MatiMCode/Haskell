bisiesto :: Int -> Bool
bisiesto anio | (mod anio 4 /=0) || ((mod anio 100 == 0)&&(mod anio 400 /= 0)) = False
              | otherwise = True