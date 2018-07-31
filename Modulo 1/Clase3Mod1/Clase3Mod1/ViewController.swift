//
//  ViewController.swift
//  Clase3Mod1
//
//  Created by alumno on 7/23/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var nombreTextField: UITextField!
    
    @IBAction func botonesPresionado(_ sender: UIButton) {
        print("presionado")
    }
    
    @IBAction func nuevoBoton() {
        print("nuevo botón presionado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        texto.text = "Area51"
        nombreTextField.placeholder = "Ingresar nombre"
        
    }

}

