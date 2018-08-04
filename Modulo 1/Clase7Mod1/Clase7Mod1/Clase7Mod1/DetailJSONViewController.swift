//
//  DetailJSONViewController.swift
//  Clase7Mod1
//
//  Created by alumno on 8/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class DetailJSONViewController: UIViewController {

    @IBOutlet weak var fullnameLabel: UILabel!
    public var fullname: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = fullname["nombre"] as? String, let apellido = fullname["apellido"] as? String {
            fullnameLabel.text = name + " " + apellido
        }

    }
    
    @IBAction func closeButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
