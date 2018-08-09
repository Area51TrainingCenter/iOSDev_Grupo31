//
//  DetailViewController.swift
//  Clase1Mod2
//
//  Created by alumno on 8/8/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    
    var platoSeleccionado: Plato!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombreLabel.text = platoSeleccionado.nombre
        descripcionLabel.text = platoSeleccionado.descripcion
        precioLabel.text = "\(platoSeleccionado.precio)"
    }

}
