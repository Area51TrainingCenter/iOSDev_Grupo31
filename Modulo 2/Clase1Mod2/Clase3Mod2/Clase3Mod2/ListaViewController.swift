//
//  ListaViewController.swift
//  Clase3Mod2
//
//  Created by alumno on 8/13/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UICollectionViewController {
    
    var objectos: [Int] = []

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: IBAction methods
    @IBAction func agregarAction(_ sender: Any) {
        
        objectos.append(0) //Número de item
        //collectionView.reloadData()

        if collectionView.numberOfSections > 0 {
            
            let items = collectionView.numberOfItems(inSection: 0)
            
            let indexPath = IndexPath(item: items, section: 0)
            collectionView.insertItems(at: [indexPath])
            
        }else {
            collectionView.insertSections(IndexSet(integer: 0))
        }
        
    }
    @IBAction func deleteAction(_ sender: Any) {
        
        if collectionView.numberOfSections > 0 {

            let items = collectionView.numberOfItems(inSection: 0)
            objectos.remove(at: items-1)
            
            if items == 1 {
                //Borro section
                //collectionView.deleteSections(IndexSet(integersIn: 0 ..< items))
                collectionView.deleteSections(IndexSet(integer: 0))
            }else {
                let indexPath = IndexPath(item: items-1, section: 0)
                collectionView.deleteItems(at: [indexPath])
            }
            
            
        }

    }

    //MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return objectos.count > 0 ? 1 : 0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objectos.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath)
        return cell
        
    }

}

extension ListaViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
}
