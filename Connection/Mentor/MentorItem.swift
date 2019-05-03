//
//  MentorItem.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 29/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit
import Foundation

class MentorItem {
    var image:UIImage
    var pos: String
    var place: String
    var name: String
    
    init(image: UIImage, pos: String, place: String, name: String) {
        self.image = image
        self.pos = pos
        self.place = place
        self.name = name
    }
}
