//
//  ListaViewController.swift
//  Clase4Mod2
//
//  Created by alumno on 8/15/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {
    
    var placeholders: Array<String> = []


    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 50
        //tableView.rowHeight = UITableView.automaticDimension
        
        registrarCelda()
        
        placeholders = ["Aliquam nec nunc vitae lorem vestibulum sodales vel a nisi. Nullam a interdum lorem, sed condimentum ante. Nunc tincidunt sed nunc eu accumsan. ",
         "In eleifend nisi lacus, id mollis ex scelerisque ac",
         " Donec iaculis",
        "Quisque augue erat, molestie at ultrices vitae, interdum ut ante. Sed eu pretium velit. Phasellus viverra cursus lorem, tristique posuere orci laoreet et. Duis ut interdum risus. Vivamus sed auctor nisl, sit amet fringilla ex. Morbi egestas at ante id tincidunt. Sed convallis leo condimentum convallis mattis. Maecenas suscipit a mauris vel tempus. Ut tempus dolor at felis consequat, eu egestas neque semper."]
        
    }
    
    func registrarCelda() {
        
        let nib = UINib(nibName: "AnotherCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: "anotherCell")
        
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return placeholders.count > 0 ? 1 : 0
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeholders.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! CustomCell
        cell.textoLabel.text = placeholders[indexPath.row]

        return cell*/
        
        let anotherCell = tableView.dequeueReusableCell(withIdentifier: "anotherCell", for: indexPath) as! AnotherCell
        anotherCell.textoLabel.text = placeholders[indexPath.row]
        
        return anotherCell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 44
        }else {
            return UITableView.automaticDimension
        }
    }

}
