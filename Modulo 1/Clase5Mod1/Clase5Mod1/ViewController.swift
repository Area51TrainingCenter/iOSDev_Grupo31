//
//  ViewController.swift
//  Clase5Mod1
//
//  Created by alumno on 7/30/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let miTextField = view.viewWithTag(100)
        
        
        if let varTemporal = view.viewWithTag(101) as? UITextField {
            
            
        }else {
            
        }
    }

}
//Paso 1: Adoptar protocolo
extension ViewController: UITextFieldDelegate {
    
    //Paso 2: Implementar métodos necesarios.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("tecla seleccionada")
        
        if unoTextField == textField {
            print("caja uno")
        }else {
            print("caja dos")
        }
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("comienza la edición")
        
        print("\(textField.tag)")
        /*
        if textField.tag == 100 {
            print("caja uno")
        }else {
            print("caja dos")
        }*/
        return true
    }
    
}

extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Area51"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        unoTextField.text = "Area51"
        print("objeto seleccionado")
    }
    
}



