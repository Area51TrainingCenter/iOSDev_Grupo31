//
//  PlatoCell.swift
//  Clase1Mod2
//
//  Created by alumno on 8/8/18.
//  Copyright © 2018 Area 51 Training Center S.A.C. All rights reserved.
//

import UIKit

class PlatoCell: UITableViewCell {

    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
