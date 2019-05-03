//
//  MenteeTableCell.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 29/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class MenteeTableCell: UITableViewCell {
    
    @IBAction func startChatBtn(_ sender: UIButton) {
        
    }
    @IBOutlet weak var menteePic: UIImageView! // gambar
    @IBOutlet weak var menteePosition: UILabel! // posisi
    @IBOutlet weak var menteePlace: UILabel! // place atau company
    @IBOutlet weak var menteeName: UILabel!
    
    func setItem(item: MenteeItem) {
        menteePic.image = item.image
        menteePosition.text = item.pos
        menteePlace.text = item.place
        menteeName.text = item.name
    }
    
}
