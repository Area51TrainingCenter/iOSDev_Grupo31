//
//  ListaViewController.swift
//  Clase1Mod2
//
//  Created by alumno on 8/8/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {
    
    var platos: [Plato] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nuevoSegue" {
            
            let nav = segue.destination as! UINavigationController
            let detail = nav.topViewController as! NuevoViewController
            detail.delegate = self
            
        }else if segue.identifier == "detailSegue" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let detail = segue.destination as! DetailViewController
                detail.platoSeleccionado = platos[indexPath.row]
            }

        }
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return platos.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! PlatoCell
        
        let plato = platos[indexPath.row]
        //cell.textLabel?.text = plato.nombre
        cell.nombreLabel.text = plato.nombre
        cell.precioLabel.text = "\(plato.precio)"
        
        return cell
    }

}

extension ListaViewController: NuevoViewControllerDelegate {
    
    func nuevo(_ plato: Plato) {
        
        //GCD
        DispatchQueue.main.async {
            self.platos.append(plato)
            self.tableView.reloadData()
        }
        
    }

}
