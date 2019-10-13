//
//  CreatingNewHeroTableViewController.swift
//  Dream Team
//
//  Created by Виктория Воробьева on 13/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class CreatingNewHeroTableViewController: UITableViewController {

    @IBOutlet var textA: UITextField!
    @IBOutlet var textB: UITextField!
    @IBOutlet var textC: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textA.delegate = self
        textB.delegate = self
        textC.delegate = self
    }

}

extension CreatingNewHeroTableViewController: UITextFieldDelegate {
    
}
