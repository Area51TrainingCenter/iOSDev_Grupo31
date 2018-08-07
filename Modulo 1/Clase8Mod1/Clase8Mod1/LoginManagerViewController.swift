//
//  LoginManagerViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 8/6/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class LoginManagerViewController: UIViewController {

    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        
        login()
    }
    
    private func login() {
        
        let app = (UIApplication.shared.delegate as! AppDelegate)
        app.app()
        
    }

}
