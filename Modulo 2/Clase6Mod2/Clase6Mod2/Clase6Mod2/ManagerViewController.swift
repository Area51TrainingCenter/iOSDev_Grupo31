//
//  ManagerViewController.swift
//  Clase6Mod2
//
//  Created by Area51 on 8/20/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ManagerViewController: JASidePanelController {
    
    override func awakeFromNib() {
        
        leftPanel = storyboard?.instantiateViewController(withIdentifier: "LeftViewController")
        centerPanel = storyboard?.instantiateViewController(withIdentifier: "TimelineViewController")
        rightPanel = storyboard?.instantiateViewController(withIdentifier: "RightViewController")
        
    }

}
