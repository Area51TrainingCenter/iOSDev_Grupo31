//
//  LoginManagerViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 8/6/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class LoginManagerViewController: UIViewController {

    @IBOutlet weak var informacionLabel: UILabel!
    
    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ingresarSegue" {
            
            let detail = segue.destination as! SigninViewController
            detail.delegate = self
            
        }else if segue.identifier == "crearSegue" {
            
            let detail = segue.destination as! SignupViewController
            detail.delegate = self
            
        }
        
    }
    
    private func login() {
        
        let app = (UIApplication.shared.delegate as! AppDelegate)
        app.app()
        
    }

}

extension LoginManagerViewController: SignupViewControllerDelegate {
    
    func signup(_ nombre: String, with email: String, and password: String) {
        
        informacionLabel.text = nombre
    }
    
}

extension LoginManagerViewController: SigninViewControllerDelegate {
    
    func signin(_ email: String, with password: String) {
        
        //API
        //True
        
        informacionLabel.text = email + " " + password
        login()
        
        //False
        //Presentar mensaje de error
        
    }
    
    /*
    func test() {
        print("funciona!")
    }*/
    
}
