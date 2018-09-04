//
//  Venue.swift
//  Clase4Mod3_2
//
//  Created by Area51 on 9/3/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation
import MapKit

class Venue: NSObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D
    var title: String?
    var category: String
    
    var subtitle: String? {
        return category
    }
    
    init(title: String, category: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.category = category
        self.coordinate = coordinate
    }
    
    static func data() -> [Venue] {

        let v1 = Venue(title: "Restaurante H", category: "m", coordinate: CLLocationCoordinate2DMake(-12.100753, -77.032049))
        let v2 = Venue(title: "Medicina P", category: "sd", coordinate: CLLocationCoordinate2DMake(-12.104550, -77.028874))
        let v3 = Venue(title: "Gusto H", category: "sd", coordinate: CLLocationCoordinate2DMake(-12.100123, -77.027329))
        
        return [v1, v2, v3]
    }
    
}
