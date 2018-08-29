//
//  Post.swift
//  Clase7Mod2
//
//  Created by Area51 on 8/22/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation

struct Post {
    
    let author: String
    let id: Int
    let title: String
    
    init?(json: [String: Any]) {
        
        guard let author = json["author"] as? String else { return nil }
        guard let id = json["id"] as? Int else { return nil }
        guard let title = json["title"] as? String else { return nil }
        
        self.author = author
        self.id = id
        self.title = title
        
    }
    
    static func convertir(_ json: [[String: Any]]) -> [Post] {
        
        return json.compactMap({ Post(json: $0) })

    }
    
}
