//
//  PhotoViewController.swift
//  Clase4Mod2
//
//  Created by alumno on 8/15/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    
    func presentPicker(_ resource: UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(resource) {
            
            let pc = UIImagePickerController()
            pc.sourceType = resource
            pc.delegate = self
            
            present(pc, animated: true, completion: nil)
            
        }else {
            print("resource not available")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func presentButton(_ sender: UIButton) {
        
        if sender.tag == 100 {
            presentPicker(.camera)
        }else if sender.tag == 200 {
            presentPicker(.photoLibrary)
        }
        
    }

}

extension PhotoViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage {
            picture.image = image
        }

        picker.dismiss(animated: true, completion: nil)
        
    }

}
