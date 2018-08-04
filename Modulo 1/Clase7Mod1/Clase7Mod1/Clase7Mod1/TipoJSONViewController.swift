//
//  TipoJSONViewController.swift
//  Clase7Mod1
//
//  Created by alumno on 8/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class TipoJSONViewController: UITableViewController {
    /*
    var dic: [String: Any] = [:]
    var arr: [Any] = []*/
    
    var json: [[String: Any]] = []
    //var js : Array<Dictionary<String, Any>> = []

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        json = [["id": 45273591, "nombre": "Carlos", "apellido": "Gonzales"], ["id": 84673920, "nombre": "Alex", "apellido": 232]]

    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            
            let nav = segue.destination as! UINavigationController
            let detail = nav.topViewController as! DetailJSONViewController
            detail.fullname = json[indexPath.row]
        }
        
    }

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return json.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return json.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        let item = json[indexPath.row]

        if let nombre = item["nombre"] as? String, let apellido = item["apellido"] as? String {
            cell.textLabel?.text = nombre + " " + apellido
        }else {
            cell.textLabel?.text = "Sin valor"
        }
        
        if let dni = item["id"] as? Int {
            cell.detailTextLabel?.text = String(dni)
        }

        return cell
        
    }

}
