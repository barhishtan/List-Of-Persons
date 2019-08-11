//
//  TableViewCell.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 11/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
