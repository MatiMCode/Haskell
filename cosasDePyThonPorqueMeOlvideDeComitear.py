# ejercicio 1

# 1

# lo abris, lo lees/escribis y lo cerras

# funcion open pones el nombre

# \n es para saltar de linea

# no leerlo muchas veces se puede borrar

def contar_lineas(nombre : str):
    lineas=1
    f = open (nombre,"r")
    contenido = f.read()
    for caracter in contenido:
        if caracter=="\n":
            lineas+=1
            print(str(lineas)+ " linea")
    f.close()
    return lineas


#print(contar_lineas("lol.txt"))


# ej1.2

def existe_palabra (palabra:str,nombreArchivo:str):
    f = open(nombreArchivo,"r")
    contenido=f.read()

    palabraDetectada=False

    if palabra in contenido:
        palabraDetectada=True
    return palabraDetectada
        
        
    
#existe_palabra("ala","lol.txt")

def cantidadDeApariciones (palabra:str,nombreArchivo:str):
    f = open(nombreArchivo,"r")
    contenido=f.read()

    cantidadDePalabras = contenido.count(palabra)

    print(cantidadDePalabras)

#cantidadDeApariciones("ala","lol.txt")


#ejercicio 2

def clonar_sin_comentarios(nombreArchivo:str):
    f = open(nombreArchivo,"r")
    newf = open("COPIA.txt","w")
    lineas=f.readlines()
    print(lineas)
    lineasNuevas=[]

    contieneTexto=False
    paraBorrar=False

    for linea in lineas:
        for n in range(len(linea)):
            if linea[n] == "#" and contieneTexto==False:
                paraBorrar=True
                print("comentarioDetectado")
            if linea[n] != " " and linea[n]!="#" and paraBorrar==False:
                contieneTexto=True
                paraBorrar=False

        if paraBorrar!=True:
            lineasNuevas.append(linea)
        contieneTexto=False
        paraBorrar=False

    print(lineasNuevas)

    for line in lineasNuevas:
        newf.write(line)

    newf.close()
            
#clonar_sin_comentarios("lol.txt")


#Ejercicio 6 agregar frases al principio

def agregar_frase (nombre : str):
    f=open(nombre,"r+")
    lineas = f.readlines()
    lineas.insert(0,"aaaalaverga"+'\n')
    f.seek(0)
    f.truncate() #esto sirve para borrar las cosas
    f.writelines(lineas)

agregar_frase("lol.txt")
