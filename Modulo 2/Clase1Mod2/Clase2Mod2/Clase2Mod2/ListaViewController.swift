//
//  ListaViewController.swift
//  Clase2Mod2
//
//  Created by alumno on 8/10/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UICollectionViewController {
    
    var colorSeleccionado: UIColor! = UIColor.purple

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        let size = (UIScreen.main.bounds.size.width-5)/2
        layout.itemSize = CGSize(width: size, height: size) //CGSize(width: 100, height: 100)
    }
    
    func headerTapped(value: Bool) {
        
        colorSeleccionado = value ? UIColor.red : UIColor.purple
        //collectionView.reloadSections(IndexSet(integer: 0))

        //Rangos
        /*
         Formato 1: Inicio ..< array.count
    */
        
        let sections = collectionView.numberOfSections
        
        for section in 0..<sections {
            let filaPorSection = collectionView.numberOfItems(inSection: section)
            
            for row in 0..<filaPorSection {
                collectionView.reloadItems(at: [IndexPath(item: row, section: section)])
            }

        }

    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath)
        cell.backgroundColor = colorSeleccionado
        return cell
        
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        

        if kind == UICollectionView.elementKindSectionHeader {
            
            let view =  collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! HeaderReusableView
            view.titleLabel.text = "Sección: \(indexPath.section+1)"
            view.estadoSwitch.addTarget(self, action: #selector(actualizarColor(switchh:)), for: .valueChanged)
            
            /*
            if let swi = view.viewWithTag(200) as? UISwitch {
                swi.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
            }*/
            
            return view
            
        }else {
            
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footer", for: indexPath)
            return footer
            
        }

    }
    
    @objc func actualizarColor(switchh: UISwitch) {
        
        if switchh.isOn {
            print("rojo")
        }else {
            print("morado")
        }
        
    }

}
