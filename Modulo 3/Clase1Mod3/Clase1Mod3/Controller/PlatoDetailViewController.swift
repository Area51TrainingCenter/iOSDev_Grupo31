//
//  PlatoDetailViewController.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class PlatoDetailViewController: UIViewController {
    
    var platoSeleccionado: Plato?
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let operacion = platoSeleccionado!.insumos.reduce(0) { (result, insumo) -> Int in
            return result + insumo.cantidad
        }
        
        totalLabel.text = String(operacion)
        
        let nombres = ["ana", "pepe", "maria"]
        
        let total = nombres.reduce("") { (result, valor) -> String in
            return result + " " + valor
        }
        print(total)
        
    }

}
