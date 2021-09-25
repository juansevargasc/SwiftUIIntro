import UIKit

var greeting = "Hello, playground"


struct calculadora
{
    // propiedades
    var numero1:Int8
    var numero2:Int8
    
    init()
    {
        numero1 = 10
        numero2 = 20
    }
    
    // método
    func suma() -> Int8
    {
        return numero1 + numero2
    }
    
    func multiplicacion(numero1:Int8, numero2:Int8) -> Int8
    {
        print()
        return self.numero1 * self.numero2
    }
}


var instanciaSuma = calculadora()

print(instanciaSuma.numero1)
print(instanciaSuma.numero2)

instanciaSuma.numero1 = 4
instanciaSuma.numero2 = 8

print(instanciaSuma.numero1)
print(instanciaSuma.numero2)

var instanciaSumaDos = instanciaSuma

print(instanciaSumaDos.numero1)
print(instanciaSumaDos.numero2)

instanciaSuma.numero1 = 5
instanciaSuma.numero2 = 7

print(instanciaSuma.numero1)
print(instanciaSuma.numero2)

print(instanciaSumaDos.numero1)
print(instanciaSumaDos.numero2)
