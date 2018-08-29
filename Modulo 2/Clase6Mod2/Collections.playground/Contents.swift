import UIKit



//Closures

func operar(completion: (Int) -> Void) {
    
}

func dismiss(completion: ()-> Void ) {
    
}

func sumar(valor: Int, completion: (Int) -> Void) {
    
}

func restar(value: Int, completion: ()-> Void) {
    
}

operar { (num) in
    //print
}
dismiss {
    
}
sumar(valor: 4) { (num) in
    
}
restar(value: 3) {
    
}


let numeros = [3, 1, 5, 3, 6, 7]
let operacionFinal = numeros.filter { (num) -> Bool in
                        return num > 5
                    }

let fin = numeros.filter({ $0 > 5 })



let frutas = ["papaya", nil, "manzana", "pera"]

let filterFrutas = frutas.compactMap({ $0?.contains("p")})
print(filterFrutas)

let f = frutas.map({ $0 != nil })
print(f)


struct Auto {
    
    let nombre: String
    
    lazy var edad: Int = {
        return nombre.count
    }()
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    static func data() -> [Auto] {
        return [Auto(nombre: "Toyota"), Auto(nombre: "Audi")]
    }
    
}

let dataPrueba = Auto.data()

var result = dataPrueba.filter({$0.nombre == "Toyota"}).first
print(result?.edad)
//numeros.filter({ $0 > 5 })


