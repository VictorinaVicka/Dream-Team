//
//  ExtensionDelegate + HeroesTableViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 12.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension HeroesTableViewController {

   // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let hero = heroes[indexPath.row]
        performSegue(withIdentifier: "DetailVC", sender: hero)
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
}
