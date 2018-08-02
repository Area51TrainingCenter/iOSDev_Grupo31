//
//  DinamicoViewController.swift
//  Clase6Mod1
//
//  Created by alumno on 8/1/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class DinamicoViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return section == 0 ? 5 : 1
        /*
        if section == 0 {
            return 5
        }else {
            return 3
        }*/

    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        print("Sección: \(indexPath.section)\t Fila:\(indexPath.row)")
        
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
            cell.textLabel?.text = "Sección:\(indexPath.section)"
            cell.detailTextLabel?.text = "Fila:\(indexPath.row)"
            //cell.imageView?.image = UIImage(named: "Test")
            
            return cell
        default:
            let customCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
            customCell.tituloLabel.text = "Area51"
            customCell.switchValue.isOn = false
            return customCell
        }
        
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Header" : nil
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return section == 0 ? "Esto es un footer" : nil
    }
    
    //MARK: UITableViewDelegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print("celda seleccionada\n Sección:\(indexPath.section)\t Fila:\(indexPath.row)")
    }

}
