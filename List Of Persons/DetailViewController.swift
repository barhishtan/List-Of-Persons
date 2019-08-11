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
    
    // MARK: - Private Properties
    // Colors for background gradient
    private let firstColor = #colorLiteral(red: 0.7151858211, green: 0.3975977898, blue: 0.9718196988, alpha: 1).cgColor
    private let secondColor = #colorLiteral(red: 0.9576386809, green: 0.6317760348, blue: 0.8403951526, alpha: 1).cgColor
    private let thirdColor = #colorLiteral(red: 0.7179346681, green: 0.9502940774, blue: 0.8706399798, alpha: 1).cgColor
    
    // Positions of colors in gradient
    private let firstLocation = 0.0
    private let secondLocation = 0.5
    private let thirdLocation = 1.0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addVerticalGradient(colors: [firstColor, secondColor, thirdColor],
                            locations: [firstLocation, secondLocation, thirdLocation])
        
        nameLabel.text = name
        eMailLabal.text = eMail
        phoneLabel.text = phone
    }
    
}

// MARK: Background Color
extension DetailViewController {
    func addVerticalGradient(colors: [CGColor],
                             locations: [Double]) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = colors
        gradient.locations = locations as [NSNumber]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
