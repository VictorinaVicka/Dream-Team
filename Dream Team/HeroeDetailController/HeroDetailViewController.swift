//
//  HeroeDetailViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 11.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class HeroDetailViewController: UITableViewController {

    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var heroName: UILabel!
    @IBOutlet var descriptionLabels: [UILabel]!
    @IBOutlet var descriptionTextField: [UITextField]!
    
    @IBOutlet var descriptionTextView: UITextView!
    
    var hero: Hero!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = hero.name
        detailImage.image = hero.image
        descriptionElementsFilling()
        descriptionTextView.text = hero.information
    }
}
