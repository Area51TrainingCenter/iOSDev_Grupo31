//
//  ListaViewController.swift
//  Clase2Mod3_1
//
//  Created by Area51 on 8/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import CoreData

class ListaViewController: UITableViewController {
    
    var autos: [Auto]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        getData()
    }
    
    func getData() {
        
        guard let app = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = app.persistentContainer.viewContext
        
        let fetchRequest: NSFetchRequest<Auto> = Auto.fetchRequest()
        
        
        do {
            let result = try context.fetch(fetchRequest)
            self.autos = result
            self.tableView.reloadData()
            //Asignar a una variable y pintar en el tableview
            
        }catch let error as NSError {
            print(error.userInfo)
        }
        
        
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {

        guard let autoss = autos, autoss.count > 0 else { return 0 }
        return 1
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autos!.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        let auto = autos![indexPath.row]
        
        cell.textLabel?.text = auto.nombre

        return cell
        
    }

}
