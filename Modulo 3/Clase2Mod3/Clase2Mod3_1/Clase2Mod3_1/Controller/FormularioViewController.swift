//
//  FormularioViewController.swift
//  Clase2Mod3_1
//
//  Created by Area51 on 8/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import CoreData

class FormularioViewController: UITableViewController {

    @IBOutlet weak var marcaTextField: UITextField!
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func addAction(_ sender: UIBarButtonItem) {
        
        // 1.- Validar data
    
        // 2.- Guardar
        guard let app = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = app.persistentContainer.viewContext
        
        let nuevoAuto = Auto(context: context)
        nuevoAuto.nombre = nombreTextField.text
        nuevoAuto.modelo = marcaTextField.text
        nuevoAuto.fechaCreacion = Date() as NSDate
        nuevoAuto.color = Int16(0)
        
        app.saveContext()
        
        dismiss(animated: true, completion: nil)
        
        /*
       let m =  NSEntityDescription.entity(forEntityName: "Auto", in: context)
        m?.setValue("", forKey: "nombre")
        m?.setValue("", forKey: "modelo")*/
        
        
        
    }
    
}
