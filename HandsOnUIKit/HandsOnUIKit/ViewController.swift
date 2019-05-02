//
//  ViewController.swift
//  HandsOnUIKit
//
//  Created by Ricky Erdiansyah on 24/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descLbl: UILabel!
    
    @IBOutlet weak var clickMe: UIButton!
    
    @IBAction func btn(_ sender: UIButton) {
        
        if view.self.backgroundColor == UIColor.white{
            view.self.backgroundColor = UIColor.blue
        }else{
            view.self.backgroundColor = UIColor.white
        }
    }
    
    @IBOutlet weak var hiddenLbl: UILabel!
    
    
    @IBAction func switchTheme(_ sender: Any) {
        
    }
    
    
    @IBAction func `switch`(_ sender: UIButton) {
        if imageView.isHidden == true{
            spinner.startAnimating()
            imageView.isHidden = false
            hiddenLbl.text = "Not hidden"
        }else{
            imageView.isHidden = true
            hiddenLbl.text = "Hidden"
            //hiddenLbl.textColor = UIColor.red
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = UIColor.white
        imageView.isHidden = true
        
        clickMe.layer.cornerRadius = 20
        descLbl.text = " Hiyaaaaaaaaaaaaaaaa"
    }
    
}

