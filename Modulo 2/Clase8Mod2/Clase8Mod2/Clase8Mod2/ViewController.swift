//
//  ViewController.swift
//  Clase8Mod2
//
//  Created by Area51 on 8/24/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupFBLoginButton()
    }
    
    func setupFBLoginButton() {
        
        let login = FBSDKLoginButton()
        login.delegate = self
        login.center = view.center
        view.addSubview(login)
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        guard let app = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        DispatchQueue.main.async {
            app.app()
        }
        
        
    }

}

extension ViewController: FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if result.isCancelled {
            print("cancelado")
        }else {
            print(result.token)
            FBSDKAccessToken.current()?.tokenString
            self.loginButton(UIButton())
        }
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("logout")
    }
    
    
}

