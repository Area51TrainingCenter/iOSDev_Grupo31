//
//  User.swift
//  Clase6Mod2
//
//  Created by Area51 on 8/20/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation

struct User {
    
    let email: String
    let password: String
    
    lazy var credentials: String = {
        return "\(email) \(password)"
    }()
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
}
