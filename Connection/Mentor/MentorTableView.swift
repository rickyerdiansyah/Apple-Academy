//
//  MentorTableView.swift
//  Menteer
//
//  Created by Ricky Erdiansyah on 29/04/19.
//  Copyright © 2019 Ricky Erdiansyah. All rights reserved.
//

import UIKit

class MentorTableView: UIViewController {

    @IBOutlet weak var mentorTableView: UITableView!
    var items: [MentorItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = createArray()

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [MentorItem]{
        var tempItem: [MentorItem] = [] // temporary atau penampung
        
        let item1 = MentorItem(image: #imageLiteral(resourceName: "Amy"), pos: "Chief Executive", place: "ATT, USA", name: "Sandy Roberts")
        let item2 = MentorItem(image: #imageLiteral(resourceName: "Brittany Kelsey"), pos: "Senior Manager", place: "Dropbox, USA", name: "Brittany Kelsey")
        
        tempItem.append(item1)
        tempItem.append(item2)
        return tempItem
    }
    
}

extension MentorTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MentorTableCell") as! MentorTableCell
        
        cell.setItem(item: item)
        return cell
    }
}
