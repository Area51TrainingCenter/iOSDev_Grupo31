//
//  MenuViewController.swift
//  Clase3Mod2
//
//  Created by alumno on 8/13/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    var numeroDeCeldas: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width-10)/3, height: 50)

    }

}

extension MenuViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return numeroDeCeldas > 0 ? 1 : 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numeroDeCeldas
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        return cell
        
    }

}

extension MenuViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row+1)")
    }
}

extension MenuViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath)
        
        let label = item.viewWithTag(101) as! UILabel
        label.text = "\(indexPath.row+1)"
        
        return item
        
    }
    
}

extension MenuViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("\(indexPath.row+1)")
        
        DispatchQueue.main.async {
            self.numeroDeCeldas = indexPath.row+1
            self.tableView.reloadData()
            
            /*
            self.tableView.insertSections(<#T##sections: IndexSet##IndexSet#>, with: <#T##UITableView.RowAnimation#>)
            self.tableView.deleteSections(<#T##sections: IndexSet##IndexSet#>, with: <#T##UITableView.RowAnimation#>)
            self.tableView.reloadSections(IndexSet(integer: 0), with: UITableView.RowAnimation.fade)*/
        }
        
    }
}
