--problema sumaImpares (n N): N{
-- requiere {true}
-- asegura {res= la suma de todos los numeros impares en el intervalo (1;n)}
--}

-- si pones 3 en realidad es los primeros 3 impares

sumaImpares :: Int -> Int 
sumaImpares 0 = 0
sumaImpares n = n*2-1
