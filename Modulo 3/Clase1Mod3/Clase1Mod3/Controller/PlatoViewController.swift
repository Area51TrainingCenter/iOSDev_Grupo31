//
//  PlatoViewController.swift
//  Clase1Mod3
//
//  Created by Area51 on 8/27/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

protocol PlatoViewControllerDelegate: class {
    func platoAdded(_ plato: Plato)
}

class PlatoViewController: UIViewController {
    
    var plato: Plato!
    weak var delegate: PlatoViewControllerDelegate?

    @IBOutlet weak var tableVIew: UITableView!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        registrarCelda()
    }
    
    //MARK: Setup
    private func registrarCelda() {
        tableVIew.register(UINib(nibName: "FormularioCell", bundle: Bundle.main), forCellReuseIdentifier: "formularioCell")
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nuevoinsumosegue" {
            let detail = segue.destination as! InsumosViewController
            detail.delegate = self
        }
        
    }
    
    //MARK: IBAction method
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        
        guard let nombreCell = tableVIew.cellForRow(at: IndexPath(row: 0, section: 0)) as? FormularioCell, let nombre = nombreCell.valorTextField.text, nombre.count > 0 else { return }
        
        guard let precioCell = tableVIew.cellForRow(at: IndexPath(row: 1, section: 0)) as? FormularioCell, let precio = precioCell.valorTextField.text, precio.count > 0, let precioDouble = Double(precio) else { return }
        
        guard plato.insumos.count > 0 else { return }
        
        plato.nombre = nombre
        plato.precio = precioDouble
        
        dismiss(animated: true) {
            self.delegate?.platoAdded(self.plato)
        }
        
    }
    @IBAction func addInsumoAction(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "nuevoinsumosegue", sender: nil)
    }

}

extension PlatoViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 2 : plato.insumos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "formularioCell", for: indexPath) as! FormularioCell
            
            switch indexPath.row {
            case 0:
                cell.tituloLabel.text = "Nombre"
                cell.valorTextField.placeholder = "Jhon Aplessed"
            default:
                cell.tituloLabel.text = "Precio"
                cell.valorTextField.placeholder = "00.00"
            }
            
            return cell
            
        default:
            
            /*
            let insumoSorted = plato.insumos.sorted(by: { $0.name < $1.name} )
            */
            
            let insumoSorted = plato.insumos.sorted()
            let insumo = insumoSorted[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "insumoCell", for: indexPath)
            cell.textLabel?.text = insumo.name
            cell.detailTextLabel?.text = String(insumo.cantidad)
            return cell
            
        }
        
    }
    
    
}
extension PlatoViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Detalle": (plato.insumos.count > 0 ? "Insumos" : nil)
    }
    
}

extension PlatoViewController: InsumosViewControllerDelegate {
    
    func insumoSelected(_ insumo: Insumo) {
        
        if !plato.insumos.contains(insumo) {
            plato.addInsumo(insumo)
            tableVIew.reloadSections(IndexSet(integer: 1), with: .fade)
        }else{
            print("repetido")
        }
        
        /*
        if plato.insumos.filter({ $0.name == insumo.name }).count == 0 {
            
            plato.addInsumo(insumo)
            tableVIew.reloadSections(IndexSet(integer: 1), with: .fade)
        }else {
            print("repetido")
        }*/

    }
    
}
