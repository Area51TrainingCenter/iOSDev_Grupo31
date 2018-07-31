//
//  PadreViewController.swift
//  Clase3Mod1
//
//  Created by alumno on 7/23/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class PadreViewController: UIViewController {

    @IBAction func botonAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Segue", message: "¿Deseas presentar otra escena?", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        let mostrarAction = UIAlertAction(title: "Mostrar", style: .default) { (_) in
            
            print("funciona!")
            self.performSegue(withIdentifier: "manualSegue", sender: nil)
        }
        
        alert.addAction(cancelAction)
        alert.addAction(mostrarAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    // MARK: - Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "manualSegue" {
            
            let detail = segue.destination as! HijoViewController
            detail.mensaje = "Hola mundo"
            
        }else {
            
        }
    
    }

}
