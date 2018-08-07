//
//  SigninViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 8/6/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class SigninViewController: UITableViewController {
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {

        guard let cell0 = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? FormularioCell else { return }
        
        guard let cell1 = tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? FormularioCell else { return }
        
        guard let email = cell0.valorTextField.text, email.count > 0 else { return }
        
        guard let password = cell1.valorTextField.text, password.count > 0 else { return }
        
        validar(nombre: email, password: password)

    }
    
    private func validar(nombre: String, password: String) {
        //API
        
        navigationController?.popViewController(animated: true)
    }

    //MARK: UITableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! FormularioCell
        cell.valorTextField.placeholder = "Fila: \(indexPath.row)"
        return cell
        
    }

}
