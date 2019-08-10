//
//  DetailViewController.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 10/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var eMailLabal: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    // MARK: - Public Properties
    var name: String!
    var eMail: String!
    var phone: String!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        eMailLabal.text = eMail
        phoneLabel.text = phone
    }
    
}
