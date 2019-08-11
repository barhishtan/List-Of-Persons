//
//  TableSectionsController.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 11/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

class TableSectionsController: UITableViewController {
    
    // MARK: - Private Properties
    private let somePersons = Person.createPersons()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return somePersons.count
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell2", for: indexPath)
        let person = somePersons[indexPath.section]
        let text = (indexPath.row == 0 ? person.eMail : person.phone)
        cell.textLabel?.text = text
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(
            frame:CGRect(x: 0,
                         y: 0,
                         width:
                         tableView.frame.width,
                         height: 20))
        let label = UILabel(
            frame: CGRect(x: 10,
                          y: 2,
                          width: view.frame.width,
                          height: view.frame.height))
        
        label.font = UIFont(name: "ChalkboardSE-Regular", size: 15)
        let person = somePersons[section]
        label.text = person.name + " " + person.surname
        label.textColor = .white
        
        view.addSubview(label)
        view.backgroundColor = #colorLiteral(red: 0.6272950768, green: 0.4166486263, blue: 0.7802616954, alpha: 1)
        
        return view
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toCustomCells" else { return }
        let tableWithCellVC = segue.destination as! TableWithCellController
        tableWithCellVC.somePersons = self.somePersons
    }
}
