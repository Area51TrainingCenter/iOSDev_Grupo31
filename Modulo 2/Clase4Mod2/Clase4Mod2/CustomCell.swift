//
//  CustomCell.swift
//  Clase4Mod2
//
//  Created by alumno on 8/15/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var textoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
