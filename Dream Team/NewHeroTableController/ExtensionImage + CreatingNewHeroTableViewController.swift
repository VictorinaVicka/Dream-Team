//
//  ExtensionImage + NewHeroTableViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 13.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension NewHeroTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func chooseImagePicker(sourse: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourse) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = sourse
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageOfHero.image = info[.editedImage] as? UIImage
        imageOfHero.contentMode = .scaleAspectFill
        imageOfHero.clipsToBounds = true
        dismiss(animated: true)
    }
}
