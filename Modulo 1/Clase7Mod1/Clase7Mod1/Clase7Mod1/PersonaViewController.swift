//
//  PersonaViewController.swift
//  Clase7Mod1
//
//  Created by alumno on 8/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class PersonaViewController: UITableViewController {
    
    var auto: [String: String] = [:]

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()

        auto = ["marca": "Toyota", "modelo": "Yaris", "anio": "2012"]
    }

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return auto.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return auto.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = auto["marca"]
        case 1:
            cell.textLabel?.text = auto["modelo"]
        case 2:
            cell.textLabel?.text = auto["anio"]
        default:
            cell.textLabel?.text = "No definido"
        }
        return cell
        
    }

}
