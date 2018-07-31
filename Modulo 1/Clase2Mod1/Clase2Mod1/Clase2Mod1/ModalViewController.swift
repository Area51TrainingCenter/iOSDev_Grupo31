//
//  ModalViewController.swift
//  Clase2Mod1
//
//  Created by alumno on 7/20/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        dismiss(animated: true, completion: nil)
        
        //navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewController(animated: true)
        //navigationController?.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
