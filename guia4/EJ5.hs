medioFact :: Int -> Int
medioFact n | n>0 = medioFact(n-2) * n
             |n<=0 = 1