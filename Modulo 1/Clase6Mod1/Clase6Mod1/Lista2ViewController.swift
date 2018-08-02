//
//  Lista2ViewController.swift
//  Clase6Mod1
//
//  Created by alumno on 8/1/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class Lista2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension Lista2ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("seleccionado")
    }
}

extension Lista2ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        return cell
    }
    
}
