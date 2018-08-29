//
//  LeftViewController.swift
//  Clase6Mod2
//
//  Created by Area51 on 8/20/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class LeftViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usuarios = ["Jose", "Pedro", "Alex"]
        let ordenado = usuarios.sorted(by: { $0 < $1})
        
        usuarios.sorted { (dato1, dato2) -> Bool in
            return dato1 < dato2
        }
        
        print(ordenado)
        
    }

}
