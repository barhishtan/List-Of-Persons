//
//  TableViewController.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 10/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Private Properties
    private var persons = Person.createPersons()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell",
                                                 for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    override func tableView(_ tableView: UITableView,
                            moveRowAt fromIndexPath: IndexPath,
                            to: IndexPath) {
        let person = persons.remove(at: fromIndexPath.row)
        persons.insert(person, at: to.row)
        tableView.reloadData()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetailVC" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow
            else { return }
        
        let detailVC = segue.destination as! DetailViewController
        let person = persons[indexPath.row]
        detailVC.person = person
    }

}
