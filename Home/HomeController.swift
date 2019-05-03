//
//  HomeController.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 28/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        setGradientBackground()
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 0.0/255.0, green: 105.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 117.0/255.0, green: 185.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

}

/*
extension HomeController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = array[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCell") as! HomeTableCell
        
        cell.setText(item: item)
        return cell
    }
    
}
*/
