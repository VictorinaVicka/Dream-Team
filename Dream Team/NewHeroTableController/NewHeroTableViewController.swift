//
//  NewHeroTableViewController.swift
//  Dream Team
//
//  Created by Виктория Воробьева on 13/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class NewHeroTableViewController: UITableViewController {

    @IBOutlet var imageOfHero: UIImageView!
    @IBOutlet var changeTextFields: [UITextField]!
    @IBOutlet var cell: [UITableViewCell]!
    @IBOutlet var modifiedDescriptionTextView: UITextView!

    var delegate: NewHeroDelegate?
    var heroModel: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modifiedDescriptionTextView.delegate = self
        modifiedDescriptionTextView.layer.cornerRadius = 5
        modifiedDescriptionTextView.layer.borderColor = #colorLiteral(red: 0.470484674, green: 0.7155917287, blue: 0.987185061, alpha: 1)
        modifiedDescriptionTextView.layer.borderWidth = 0.5
        modifiedDescriptionTextView.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        modifiedDescriptionTextView.text = "Введите описание..."
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil,
                                                message: nil,
                                                preferredStyle: .actionSheet)
            
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                self.chooseImagePicker(sourse: .camera)
            }
            
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                self.chooseImagePicker(sourse: .photoLibrary)
            }
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
        } else {
            view.endEditing(true)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if ((cell?.capacity) != nil) {
            
        }
        return 0
    }
    
    func createNewHero() {
        heroModel = Hero(name: changeTextFields[0].text,
                    image: imageOfHero.image,
                    realName: changeTextFields[1].text,
                    location: changeTextFields[2].text,
                    colorEye: changeTextFields[3].text,
                    colorHair: changeTextFields[4].text,
                    firstAppearance: changeTextFields[5].text,
                    superPower: nil,
                    allie: nil,
                    enemie: nil,
                    information: modifiedDescriptionTextView.text)
    }
    
    @IBAction func goBackToOneButtonTapped(_ sender: UIButton) {
        createNewHero()
        performSegue(withIdentifier: "Unwind", sender: self)
    }
}
