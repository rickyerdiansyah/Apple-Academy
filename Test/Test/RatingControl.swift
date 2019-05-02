//
//  RatingControl.swift
//  Test
//
//  Created by Ricky Erdiansyah on 12/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    // Create a rating star
  // initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButtons(){
        // Create Button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Constraints
        button.translatesAutoresizingMaskIntoConstraints = false // Default value = true
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true // define button fixed height
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true // define button fixed width
        
        // Add Button
        
    }
    
}
