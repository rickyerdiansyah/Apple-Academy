//
//  MentorTableCell.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 29/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class MentorTableCell: UITableViewCell {
    
    @IBOutlet weak var mentorPic: UIImageView!
    @IBOutlet weak var mentorPosition: UILabel!
    @IBOutlet weak var mentorPlace: UILabel!
    @IBOutlet weak var mentorName: UILabel!
    
    
    
    func setItem(item: MentorItem) {
        mentorPic.image = item.image
        mentorPosition.text = item.pos
        mentorPlace.text = item.place
        mentorName.text = item.name
    }
    
}
