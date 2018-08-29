//
//  InsumosViewController.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

protocol InsumosViewControllerDelegate: class {
    func insumoSelected(_ insumo: Insumo)
}

class InsumosViewController: UIViewController {
    
    var insumos: [Insumo] = Insumo.data()
    weak var delegate: InsumosViewControllerDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension InsumosViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return insumos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let insumo = insumos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "insumoCell", for: indexPath)
        cell.textLabel?.text = insumo.name
        cell.detailTextLabel?.text = String(insumo.cantidad)
        return cell
    }
    
    
}
extension InsumosViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        delegate?.insumoSelected(insumos[indexPath.row])
        navigationController?.popViewController(animated: true)
        
    }
    
}
