import UIKit

//Constante - Inmutable
let miconstante = 0
//miconstante = 10

//Variable - mutable
var mivariable = 1
mivariable = 20

let exconstante: Int = 10
var exvariable: Int = 10

//Optionals?

var numeroOptional: Int?
numeroOptional = nil
numeroOptional = 10

var numberOptional: Int? = 5
//numberOptional = nil
print(numberOptional)

var numeroUnwrapped: Int!
numeroUnwrapped = 300

print(numeroUnwrapped)

if let constanteTemporal = numberOptional, let u = numeroOptional {
    let total = constanteTemporal + u
    print(total)
}else {
    print("el valor es nulo")
}

// métodos
func sumar() {
    
}
func restar(valor: Int?) {
    
}
func dividir(n1: Int, n2: Int) {
    
}
func multiplicar() -> Int? {
    return 0
}

restar(valor: nil)
dividir(n1: 10, n2: 5)


func concatenar(cadena1 valor1: String, cadena2 valor2: String) {
    
}
concatenar(cadena1: "h", cadena2: "m")

func acortar(_ cadena1: String, _ cadena2: String) {
    
}
acortar("h", "p")

func restar(_ valor1: Int, con: Int) {
    
}
restar(5, con: 10)




