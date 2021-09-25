import UIKit

var greeting = "Hello, playground"

// La más utilizada

print("Hola", "Mundo", separator: "..")

// Argumentos

// Estructura

func suma()
{
    print("El resultado es dos")
    
}

// Llamada de función

suma()

// Estructura con parámetros de entrada

func sumaXY(x: Int8, y:Int8)
{
    print(x + y)
}

sumaXY(x: 10, y: 8)

// Con retorno
func sumaXYRetorno(numero1:Int, numero2:Int) -> Int
{
    return numero1 + numero2
}

var resultado = sumaXYRetorno(numero1: 2, numero2: 3)
print(resultado)

// Arguments labels

func saluda(_ destinatario:String, deParte remitente:String)
{
    print("Mando saludos a \(destinatario) de parte de \(remitente)")
}

saluda("Juan", deParte: "Platzi")
