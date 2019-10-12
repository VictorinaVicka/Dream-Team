//
//  HeroeDetailViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 11.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class HeroeDetailViewController: UITableViewController {

    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var nemeHeroes: UILabel!
    
    @IBOutlet var descriptionLabels: [UILabel]!
    @IBOutlet var descriptionTextField: [UITextField]!
    
    
    @IBOutlet var descriptionTextView: UITextView!
    
    var heroe: Heroe!
    var textNeme: String!
    var nextImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextImage = heroe.image
        textNeme = heroe.name
        detailImage.image = nextImage
        nemeHeroes.text = textNeme
    }

}
