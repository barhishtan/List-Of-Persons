//
//  TableWithCellController.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 11/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

class TableWithCellController: UITableViewController {
    
    // MARK: - Public Properties
    var persons: [Person]!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customCellRegistration()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell",
                                                 for: indexPath) as! TableViewCell
        let person = persons[indexPath.row]
        cell.nameLabel.text = person.name + " " + person.surname
        cell.phoneLabel.text = person.phone
        cell.eMailLabel.text = person.eMail
        cell.selectionStyle = .none
        
        return cell
    }
    
    // MARK: - Private Methods
    private func customCellRegistration() {
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "CustomCell")
        tableView.rowHeight = 110
    }

}
