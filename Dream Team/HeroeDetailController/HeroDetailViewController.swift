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
    var nextImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextImage = hero.image
        detailImage.image = nextImage
        self.title = hero.name
        descriptionElementsFilling()
    }
}
