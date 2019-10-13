//
//  ExtensionImage + NewHeroTableViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 13.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension NewHeroTableViewController {
    func chooseImagePicker(sourse: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourse) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType = sourse
            present(imagePicker, animated: true)
        }
    }
    
}
