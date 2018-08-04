//
//  ListaViewController.swift
//  Clase7Mod1
//
//  Created by alumno on 8/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {
    
    var frutas: [String] = []

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frutas = ["Fresa", "Pera"]
    }
    
    //MARK: Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            
            let detail = segue.destination as! DetailViewController
            detail.fruta = frutas[indexPath.row] //"Fruta seleccionada"
            
        }

    }

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        /*
        if frutas.count > 0 {
            return 1
        }else {
            return 0
        }*/
        return frutas.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        let fruta = frutas[indexPath.row]
        cell.textLabel?.text = fruta
        
        return cell
        
    }

}
