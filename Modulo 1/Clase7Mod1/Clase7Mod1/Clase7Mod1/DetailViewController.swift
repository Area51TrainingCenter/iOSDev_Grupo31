//
//  DetailViewController.swift
//  Clase7Mod1
//
//  Created by alumno on 8/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var frutaSeleccionada: UILabel!
    public var fruta: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let _ = fruta {
            frutaSeleccionada.text = fruta!
        }
        
    }

}
