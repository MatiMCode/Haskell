estanRelacionados :: Int -> Int -> Bool
estanRelacionados a b | a*a + a*b == 0 = True
                      | otherwise = False