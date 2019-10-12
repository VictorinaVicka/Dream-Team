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
    
    @IBOutlet var realNameLabel: UILabel!
    @IBOutlet var realNameTextField: UITextField!
    
    @IBOutlet var placeOfStayLabel: UILabel!
    @IBOutlet var placeOfStayTextField: UITextField!
    
    @IBOutlet var eyesLabel: UILabel!
    @IBOutlet var eyesTextField: UITextField!
    
    @IBOutlet var hairLabel: UILabel!
    @IBOutlet var hairTextField: UITextField!
    
    @IBOutlet var appearanceInComicsLabel: UILabel!
    @IBOutlet var appearanceInComicsTextField: UITextField!
    
    @IBOutlet var superpowerLabel: UILabel!
    @IBOutlet var superpowerTextField: UITextField!
    
    @IBOutlet var alliesLabel: UILabel!
    @IBOutlet var alliesTextField: UITextField!
    
    @IBOutlet var enemiesLabel: UILabel!
    @IBOutlet var enamiesTextField: UITextField!
    
    @IBOutlet var descriptionLabel: UILabel!
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
