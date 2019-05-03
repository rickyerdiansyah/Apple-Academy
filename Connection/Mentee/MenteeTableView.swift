//
//  MenteeTableView.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 29/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit
class MenteeTableView: UIViewController {

    @IBOutlet weak var menteeTableView: UITableView!
    var items: [MenteeItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = createArray()
        
        
        /* cara manual drag ke viewController :
         
        tableView.delegate = self
        tableView.source = self*/
        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [MenteeItem]{
        var tempItem: [MenteeItem] = [] // temporary atau penampung
     
        let item1 = MenteeItem(image: #imageLiteral(resourceName: "Tim Berkeley Mentor"), pos: "Chief Executive", place: "ATT, USA", name: "Sandy Roberts")
        let item2 = MenteeItem(image: #imageLiteral(resourceName: "Brittany Kelsey"), pos: "Senior Manager", place: "Dropbox, USA", name: "Brittany Kelsey")
        let item3 = MenteeItem(image: #imageLiteral(resourceName: "picture Icon"), pos: "System Analyst", place: "Adobe, Canada", name: "Tim Berkeley")
        let item4 = MenteeItem(image: #imageLiteral(resourceName: "Brittany mentor"), pos: "Relationship Officer", place: "IBM, USA", name: "Amanda")
        let item5 = MenteeItem(image: #imageLiteral(resourceName: "Robin Shue Mentor"), pos: "Project Manager", place: "Spotify, UK", name: "Johny Dunham")
        
        tempItem.append(item1)
        tempItem.append(item2)
        tempItem.append(item3)
        tempItem.append(item4)
        tempItem.append(item5)
        return tempItem
    }

}

extension MenteeTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // func ini jalan setiap ada cell baru untuk menampilkan data di cell
        let item = items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenteeTableCell") as! MenteeTableCell
    
        cell.setItem(item: item)
        return cell
    }
}
