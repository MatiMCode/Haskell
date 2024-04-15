parteEntera :: Float -> Int
parteEntera n | (0<=n) && (n< 0.5) = 0
              | (n>=0.5) && (n<1) = 1 
              | n>0 = parteEntera(n-1) + 1
              | n<0 = -(parteEntera(-n -1) +1)


--ok entonces si esta entre 0 o 0.9 la suma va a ser cero