--ahh basicamente, a al cuadrado eso deberia ser cancelado por a*b*c 


--a*a + a*b*x =0
--x = -a*a /a*b
--x = -(a)/b

estanRelacionados :: Int -> Int -> Bool
estanRelacionados a b = (a*a + a*b*(div (-a) b) ==0) && (div (-a) b/=0)  