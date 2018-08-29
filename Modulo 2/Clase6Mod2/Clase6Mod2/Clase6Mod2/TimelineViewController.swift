//
//  TimelineViewController.swift
//  Clase6Mod2
//
//  Created by Area51 on 8/20/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import FirebaseAuth

class TimelineViewController: UIViewController {

    @IBOutlet weak var unoTextField: UITextField!
    @IBOutlet weak var dosTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func ingresarButton(_ sender: UIButton) {
        
        guard let email = unoTextField.text, email.count > 0 else { return }
        
        guard let password = dosTextField.text, password.count > 0 else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let info = result {
                self.resultadoLabel.text = info.user.email
            }else {
                print(error?.localizedDescription)
            }
            
        }

    }
    @IBAction func crearButton(_ sender: UIButton) {
        
        guard let email = unoTextField.text, email.count > 0 else { return }
        
        guard let password = dosTextField.text, password.count > 0 else { return }
        
        
        var nuevoUsuario = User(email: email, password: password)
        
        print(nuevoUsuario.credentials)
        
        Auth.auth().createUser(withEmail: email, password: password ) { (result, error) in
            
            if let info = result {
                
                self.resultadoLabel.text = "\(info.user.email) \(info.user.displayName)"
                print(info.additionalUserInfo)
                
            }else {
                print(error?.localizedDescription)
            }
            
            
        }
        
        
    }

}
