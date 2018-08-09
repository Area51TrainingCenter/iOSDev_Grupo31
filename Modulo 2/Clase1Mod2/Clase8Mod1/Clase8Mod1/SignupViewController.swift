//
//  SignupViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 8/6/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

protocol SignupViewControllerDelegate: class {
    func signup(_ nombre: String, with email: String, and password: String)
}

class SignupViewController: UITableViewController {
    
    weak var delegate: SignupViewControllerDelegate?

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nombreTextField: UITextField!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        
        guard nombreTextField.text!.count > 0 else {
            print("nombre vacio")
            return
        }
        
        guard let nombre = nombreTextField.text, nombre.count > 0 else { return }
        
        guard emailTextField.text!.count > 0 else {
            print("email vacio")
            return
        }
        
        guard passwordTextField.text!.count > 0 else {
            print("password vacio")
            return
        }
        
        crearCuenta(nombre: nombre)
        
        
        
    }
    
    private func crearCuenta(nombre: String) {
        
        //API
        
        //navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        
       delegate?.signup(nombre, with: "", and: "")
        navigationController?.popViewController(animated: true)
        
    }

}
