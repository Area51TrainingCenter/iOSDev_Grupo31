import UIKit

struct Auto {
    
    let marca: String
    func encender() {} //método de instancia
    
    static func fabricante() -> String {
        return ""
    }
    
}

let miauto = Auto(marca: "Toyota")
miauto.encender()

Auto.fabricante()


//Tuplas

let user = (nombre: "Area51", direccion: "San Isidro")
print(user.nombre)
print(user.direccion)
print(user.0)
print(user.1)

let auto = ("toyota", "yaris")
print(auto.0)

func validar(numero: Int) -> (result: Int?, error: String?) {
    
    return (nil, "Imposible de operar")//(4, nil)
}

let resultado = validar(numero: 4)
print(resultado.result)
print(resultado.error)


let tuplas = [("2", 2), ("4", 4)]

for tupla in tuplas {
    print(tupla.0)
    print(tupla.1)
}

let credentials = (email: "area51@peru.pe", password: "123456")

switch credentials {
case ("peru@peru.pe", "123456"):
    print("Es Perú")
case ("area51@peru.pe", "123456"):
    print("Es área")
default:
    print("No sé quién eres")
}

switch credentials {
case ("area51@peru.pe", _):
    print("Es Área")
default:
    print("No sé")
}

switch credentials {
case ("area51@peru.pe", let password):
    print("Password: \(password)")
default:
    print("desconocido")
}


let marca: String? = "Nissan"//nil

let r = marca ?? "Audi"
print(r)


//Rangos

let edad = 15

if (0...10).contains(edad) {
    print("Aún es un niño")
}else if (11 ..< 18).contains(edad) {
    print("Adolescente")
}else if (18 ... 70).contains(edad) {
    print("adulto")
}else {
    print("anciano")
}

let frutas = ["pera", "fresa", "mango", "manzana"]

for index in 0..<frutas.count {
    print(frutas[index])
}

for _ in 1...10 {
    print("Perú")
}






