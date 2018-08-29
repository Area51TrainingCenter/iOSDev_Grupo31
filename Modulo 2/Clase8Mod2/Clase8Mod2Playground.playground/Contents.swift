import UIKit

//Map
let frutas = ["Papaya", "Mango", "Uva", nil]

let f = frutas.map { (valor) -> Int in
    return valor != nil ? valor!.count : 0
}
//print(f)

let r = frutas.map({ $0 != nil ? $0!.count : 0 })
print(r)

//Compact Map
let paises = ["Perú", nil, "Canadá", "Chile", nil]
let p = paises.compactMap { (valor) -> String? in
    return valor
}
print(p)

let a = paises.compactMap({ $0?.count })
print(a)

//Flat Map
let muchos = [[1, 2], [3, 4], [5, 6]]
let m = muchos.flatMap({$0})
print(m)


//Sort

let numeros = [10, 23, 45, 909, 1, 64]
let n = numeros.sorted()
print(n)

struct Person: Comparable {

    let nombre: String
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.nombre < rhs.nombre
    }
    
}

struct M: Equatable {
    
    
}
let p1 = Person(nombre: "Yaya")
let p2 = Person(nombre: "Luis")
let p3 = Person(nombre: "Maria")
let p4 = Person(nombre: "Beto")

let people = [p1, p2, p3, p4]

people.sorted()

let peopleSorted = people.sorted(by: { $0.nombre < $1.nombre })
print(peopleSorted)

