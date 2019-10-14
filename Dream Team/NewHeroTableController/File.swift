//
//  File.swift
//  Dream Team
//
//  Created by Mr. Bear on 14.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension NewHeroTableViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1) {
            textView.text = nil
            textView.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Введите описание..."
            textView.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        }
    }
}
