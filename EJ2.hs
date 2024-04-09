maximo3 :: Int -> Int -> Int -> Int
maximo3 a b c | (a>=b) && (a>c) = a
              | (b>a) && (b>c) =b
              | otherwise = c

--2 2 1

--Suma distintos


-- problema sumaDistintos (x,y,z : Z):Z{
--requiere: {true}
--asegura: {si los parametros son distintos, entonces res es x + y + z}
--asegura: {si hay dos parametros iguales, se devuelve el diferente}
--asegura: {si los tres son iguales, da cero}
--
--
--}

--se hace con xor creo

sumaDistintos :: Int -> Int -> Int -> Int
sumaDistintos x y z| (y==z) && (y/=x) = x
                   | (x==y) && (x/=z) = z
                   | (z==x) && (x/=y) = y
                   | (x/=y) && (x/=z) = x+y+z 
                   |otherwise = 0


--digitoUnidades

digitoUnidades :: Int -> Int 
digitoUnidades n| n>=0 = mod n 10
            |otherwise = mod (-n) 10




--digitoDecenas

-- problema digitoDecenas (x:Z):Z{
--      requiere{true}
--      asegura{si el numero es mayor a 10, res= x/10}
--      asegura{si el numero es menor a 10 res=0}
--}

digitoDecenas :: Int -> Int 
digitoDecenas n| n>=10 = div (mod n 100) 10
               | otherwise = 0