import UIKit

/*
 Collections
 */

/*
 1.- Array
 */

//Declarar
//let arrayForma1: Array<String>
//var arrayForma2: [String]

//Inicializar
var arrayInitForma1: [String] = []
var arrayInitForma2 = [String]()

//Ejemplo de inicializar
var valor: Int = 10
var otrovalor = 10

//Acceder a una posición especifica.
let frutas = ["Pera", "Manzana", "Uva"]
print(frutas[1])

let verduras = ["Lechuga", "Zanahoria", "Zapallo"]

var total = frutas + verduras
total.append("Yuca")


/*
 2.- Dictionary
 */

//Declarar
//let dictionaryForma1: Dictionary<String, String>
//let dictionaryForma2: [String: String]

//Inicializar
var dictInitForma1: [String: String] = [:]
var dictInitForma2 = [String: String]()

var persona = ["nombre": "Carlos", "apellido": "Lopez"]

print(persona["nombre"])
