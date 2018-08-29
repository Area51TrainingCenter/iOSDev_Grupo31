//
//  PlatosViewController.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class PlatosViewController: UIViewController {
    
    var platos: [Plato] = []

    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBAction method
    @IBAction func addPlatoAction(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "nuevoplatosegue", sender: nil)
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nuevoplatosegue" {
            
            let nav = segue.destination as! UINavigationController
            let detail = nav.topViewController as! PlatoViewController
            detail.delegate = self
            detail.plato = Plato()
            
        }else if segue.identifier == "platodetailsegue" {
            
            let detail = segue.destination as! PlatoDetailViewController
            detail.platoSeleccionado = sender as? Plato

        }
        
    }

}

extension PlatosViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "platocell", for: indexPath)
        cell.textLabel?.text = platos[indexPath.row].nombre
        return cell

    }
    
}
extension PlatosViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "platodetailsegue", sender: platos[indexPath.row])
    }
    
}

extension PlatosViewController: PlatoViewControllerDelegate {
    
    func platoAdded(_ plato: Plato) {
        platos.append(plato)
        tableView.reloadData()
    }
    
}
