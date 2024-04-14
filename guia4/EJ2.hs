parteEntera :: Float -> Int
parteEntera n | n  < 0.9 = 0
              | otherwise = parteEntera(n-1) + 1