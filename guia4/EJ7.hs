todosDigitosIguales :: Int -> Bool 
todosDigitosIguales n | n<10 =  True
                      | otherwise = (mod n 10 == div (mod n 100) 10) == todosDigitosIguales(div n 10)

--tenes que ir comparando de a dos, el ultimo digito (mod n 10) con el anteultimo div (mod n 100) 10 y despues sacas el ultimo con div n 10
--                                                                                     mod n 100 te da 2 digitos, dividiendo por 10 te da solo el ultimo que seria el anteultimo
--   con el ultimo todosDigitosIguales div n 10 le sacas el ultimo numero, tipo 1234 div 10 te va a dar 123