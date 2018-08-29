//
//  Insumo.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation

struct Insumo: Comparable {
    
    let name: String
    let cantidad: Int
    
    static func == (lhs: Insumo, rhs: Insumo) -> Bool {
        return lhs.name == rhs.name
    }
    static func < (lhs: Insumo, rhs: Insumo) -> Bool {
        return lhs.name < rhs.name
    }

}

extension Insumo {
    
    static func data() -> [Insumo] {
        
        return [Insumo(name: "Papa Huayro", cantidad: 1), Insumo(name: "Rocoto", cantidad: 4), Insumo(name: "Arroz", cantidad: 5)]
        
    }
}
