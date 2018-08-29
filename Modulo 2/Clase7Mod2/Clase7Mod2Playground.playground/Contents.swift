import UIKit


//Struct

struct VehiculoStruct {
    
    let numeroDeRuedas: Int
    var marca: String
    var modelo: String?// = nil
    let paisDeFabricación: String = "Perú"
    var pais: Country = .desconocido
    var marcaEnum: Marca = .desconocido
    var dict: [Country: String]?
    
    enum Country: Int {
        case japon = 1, mexico = 3, alemania, peru, desconocido
    }
    
    enum Marca: String {
        case audi = "a udi", toyota = "toyoda", desconocido
    }
    
    init() {
        self.numeroDeRuedas = 10
        self.marca = "Audi"
    }
    
    init(marca: String, modelo: String) {
        
        self.numeroDeRuedas = modelo.count * 2
        self.marca = marca
        self.modelo = modelo
        
    }
    
    init(marca: String, pais: Country) {
        
        self.numeroDeRuedas = pais == .japon ? 4 : 8
        self.marca = marca
        self.modelo = pais == .japon ? "A4" : nil
        self.pais = pais
        self.marcaEnum = .audi
        self.dict = [.japon: ""]
        
    }
}

var nuevoVehiculo = VehiculoStruct()
nuevoVehiculo.modelo = "A4"

var vehiculo = VehiculoStruct(marca: "Toyota", pais: .japon)
//print(vehiculo.pais.rawValue)
//print(vehiculo.marcaEnum.rawValue)

_ = VehiculoStruct(marca: "", pais: .alemania)

//_ = VehiculoStruct(numeroDeRuedas: 10, marca: "Audi")

var copia = vehiculo

print(copia.marca)
print(vehiculo.marca)
print("\n")

vehiculo.marca = "Audi"

print(copia.marca)
print(vehiculo.marca)



//Caso
enum MedioType {
    case filesystem
    case coredata
    case sqlite
}

func definirMedio(_ medio: [MedioType: Int]) {
    
    _ = medio[.coredata]
    
}

definirMedio([.coredata : 3])



//Classes


class Transporte {
    
    var medio: String
    let pais: String
    var condicion: Bool
    
    init(medio: String, pais: String) {
        self.medio = ""
        self.pais = ""
        self.condicion = true
        //calcular()
    }
    
    func calcular() {
        self.condicion = true
    }
    
    convenience init() {
        self.init(medio: "", pais: "")
    }
    
}
_ = Transporte()
_ = Transporte(medio: "", pais: "")


class A {
    
    let v1: Int
    
    init(valor: Int) {
        self.v1 = valor
    }
    
}

class A1: A {
    
    var v2: String
    
    init(valor: String) {
        self.v2 = valor
        super.init(valor: 0)
    }
    
    convenience init() {
        self.init(valor: "Area51")
    }
    
}

var a1 = A1()
var a2 = a1

print(a1.v2)
print(a2.v2)
print("\n")

a2.v2 = "Swift"

print(a1.v2)
print(a2.v2)

