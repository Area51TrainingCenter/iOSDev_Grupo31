//
//  NuevoViewController.swift
//  Clase1Mod2
//
//  Created by alumno on 8/8/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

protocol NuevoViewControllerDelegate: class {
    func nuevo(_ plato: Plato)
}

class NuevoViewController: UITableViewController {

    @IBOutlet weak var precioTextField: UITextField!
    @IBOutlet weak var descipcionTextField: UITextField!
    @IBOutlet weak var nombreTextField: UITextField!
    
    weak var delegate: NuevoViewControllerDelegate?
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBAction methods
    @IBAction func doneButton(_ sender: Any) {
        
        guard let nombre  = nombreTextField.text, nombre.count > 0 else { return }
        guard let descripcion = descipcionTextField.text, description.count > 0 else { return }
        
        guard let precioString = precioTextField.text, precioString.count > 0 else { return }
        
        guard let precio = Double(precioString) else { return }
        
        let nuevoPlato = Plato(nombre: nombre, descripcion: descripcion, precio: precio)
        
        
        //dismiss(animated: true, completion: nil)
        
        dismiss(animated: true) {
            self.delegate?.nuevo(nuevoPlato)
        }

    }
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
