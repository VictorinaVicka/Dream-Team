//
//  ExtensionDelegate + HeroesTableViewController.swift
//  Dream Team
//
//  Created by Саша Гужавин on 12.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension HeroesTableViewController {

   // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let hero = heroes[indexPath.row]
        performSegue(withIdentifier: "DetailVC", sender: hero)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
        
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            heroes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let moveObjTemp = heroes[sourceIndexPath.item]
        heroes.remove(at: sourceIndexPath.item)
        heroes.insert(moveObjTemp, at: destinationIndexPath.item)
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
}
