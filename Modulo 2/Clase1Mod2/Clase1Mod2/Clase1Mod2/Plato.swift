//
//  Plato.swift
//  Clase1Mod2
//
//  Created by alumno on 8/8/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import Foundation

struct Plato {
    
    let nombre: String
    let descripcion: String
    let precio: Double
    
}

extension Plato {
    
    init(nombre: String, precio: Double) {
        self.nombre = nombre
        self.precio = precio
        self.descripcion = ""
    }
    
    static func data() -> [Plato] {
        
        return [Plato(nombre: "Ceviche", precio: 25)]
    }
    
}
