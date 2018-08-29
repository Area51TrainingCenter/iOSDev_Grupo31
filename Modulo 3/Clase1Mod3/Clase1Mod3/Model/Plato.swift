//
//  Plato.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation

struct Plato {
    
    var nombre: String
    var precio: Double
    private(set) var insumos: [Insumo]
    
    lazy var resumen: String = {
        return "\(nombre) - \(precio)"
    }()
    
    init() {
        self.nombre = ""
        self.precio = 0.0
        self.insumos = []
    }
    
}

extension Plato {
    
    mutating func addInsumo(_ insumo: Insumo) {
        insumos.append(insumo)
    }
    
}
