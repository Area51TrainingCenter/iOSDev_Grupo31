//
//  Auto+CoreDataProperties.swift
//  Clase2Mod3_1
//
//  Created by Area51 on 8/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//
//

import Foundation
import CoreData


extension Auto {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Auto> {
        return NSFetchRequest<Auto>(entityName: "Auto")
    }

    @NSManaged public var nombre: String?
    @NSManaged public var color: Int16
    @NSManaged public var fechaCreacion: NSDate?
    @NSManaged public var modelo: String?

}
