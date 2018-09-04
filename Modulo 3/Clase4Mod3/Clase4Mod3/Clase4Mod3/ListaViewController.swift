//
//  ListaViewController.swift
//  Clase4Mod3
//
//  Created by alumno on 9/3/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {
    
    var frutas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        frutas = ["Papaya", "Fresa", "Uva"]
    }
    
    /*
     No aplica si no usas UIStoryboardSegue
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }*/

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testcell", for: indexPath)
        cell.textLabel?.text = frutas[indexPath.row]
        return cell
        
    }
    
    //MARK: UITableViewDelegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fruta = frutas[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Detalle", bundle: Bundle.main)
        
        if let detail = storyboard.instantiateInitialViewController() as? DetalleViewController {
            
            detail.frutaSeleccionada = fruta
            //present(detail, animated: true, completion: nil)
            
            navigationController?.pushViewController(detail, animated: true)
            
        }
        
        
    }

}
