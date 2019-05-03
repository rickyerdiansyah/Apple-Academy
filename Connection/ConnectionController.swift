//
//  SecondViewController.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 28/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class ConnectionController: UIViewController {
    // Connection View Controller
    
    @IBOutlet weak var menteeContainer: UIView! // container mentee
    @IBOutlet weak var mentorContainer: UIView! // container mentor
    
    @IBOutlet weak var tabOutlet: UISegmentedControl! // Outlet for Segmented Control
    @IBAction func tabControl(_ sender: UISegmentedControl) {
        // Segmented action untuk change view container
        
        switch tabOutlet.selectedSegmentIndex {
        case 0: // if mentee tab selected
            menteeContainer.isHidden = false
            mentorContainer.isHidden = true
        case 1: // if mentor tab selected
            menteeContainer.isHidden = true
            mentorContainer.isHidden = false
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mentorContainer.isHidden = true
        menteeContainer.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    

}

