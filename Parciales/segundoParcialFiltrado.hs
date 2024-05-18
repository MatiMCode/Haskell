-- ("nombre completo",(2,3,4))

--1) aproboMasDeNMaterias :: registro [([Char],[Int])], alumno [Char] n: Z
--devuelve bool

--en registro no hay mas de 1 nombre repetido
--notas mayores a 0 menores a 10

cuantasMateriasAprobadas :: [Int] -> Int
cuantasMateriasAprobadas (x:[]) | x>=4 = 1
                         | otherwise = 0
cuantasMateriasAprobadas (x:xs) | x >=4 = 1 + cuantasMateriasAprobadas xs
                         | otherwise = cuantasMateriasAprobadas xs

aproboMasDeNMaterias :: [([Char],[Int])] -> [Char] -> Int -> Bool
aproboMasDeNMaterias lista [] n = False
aproboMasDeNMaterias ((nombre,(notas)):[]) nombreIngresado n | nombre == nombreIngresado && (cuantasMateriasAprobadas notas) > n = True
                                                             | otherwise = False
aproboMasDeNMaterias ((nombre,(notas)):otrosNombres) nombreIngresado n | nombre == nombreIngresado && (cuantasMateriasAprobadas notas) > n = True
                                                                       | otherwise = aproboMasDeNMaterias (otrosNombres) nombreIngresado n

--2) buenosAlumnos
-- da el registro, devuelve una lista de lista de chars
--no hay nombres repetidos, notas son entre 0 y 10
--promedio mayor o igual a 8
-- promedio = suma de todas las notas / cantidad de notas

longitudListaInts :: [Int] -> Int
longitudListaInts [] = 0
longitudListaInts (x:[])=1
longitudListaInts (x:xs) = 1 + longitudListaInts xs

sumarTodaLaLista :: [Int] -> Int
sumarTodaLaLista [] = 0
sumarTodaLaLista (x:[]) = x
sumarTodaLaLista (x:xs) = x + sumarTodaLaLista xs 

sacarPromedio :: ([Char],[Int]) -> Float
sacarPromedio (nombre,[]) = 0
sacarPromedio (nombre,notas) = fromIntegral(sumarTodaLaLista notas)/fromIntegral(longitudListaInts notas)

tieneAplazos :: [Int] -> Bool
tieneAplazos (nota:[]) | nota < 4 = True
                       | otherwise = False
tieneAplazos (nota:ns) | nota < 4 = True
                       | otherwise = tieneAplazos ns

buenosAlumnos :: [([Char],[Int])] -> [[Char]]
buenosAlumnos [] = []
buenosAlumnos ((nombre,notas):[]) | sacarPromedio (nombre,notas) >=8 && tieneAplazos notas == False = [nombre]
                                  | otherwise = []
buenosAlumnos ((nombre,notas):otros) | sacarPromedio (nombre,notas) >=8 && tieneAplazos notas == False = [nombre] ++ buenosAlumnos otros
                                     | otherwise = buenosAlumnos otros


--3) mejorPromedio  registro, da un solo nombre 

sacarPromedioApartirDeNombre :: [Char] -> [([Char],[Int])] -> Float
sacarPromedioApartirDeNombre nombre ((nombre1,notas):[]) | nombre==nombre1 = sacarPromedio (nombre1,notas) 
                                                         | otherwise = 0
sacarPromedioApartirDeNombre nombre ((nombre1,notas):xs) | nombre==nombre1 = sacarPromedio (nombre1,notas)
                                                         | otherwise = sacarPromedioApartirDeNombre nombre xs
 

                                    

mejorPromedio :: [([Char],[Int])] -> [Char]
mejorPromedio ((nombre,notas):[]) = nombre
mejorPromedio ((nombre,notas):xs) | (sacarPromedioApartirDeNombre nombre ((nombre,notas):xs)) >= (sacarPromedioApartirDeNombre (mejorPromedio xs) ((nombre,notas):xs)) = nombre
                                  | otherwise = mejorPromedio xs

--4) seGraduoConHonores

-- registro, cantidadMateriasDeLaCarrera, alumno te da bool

--es true si el alumno aprobo mas de cantidadmateriasdelacarrera -1
-- es true si el alumno esta en buenosAlumnos
-- el promedio de notas finales del alumno es menos de 1 punto del mejorPromedio del registro