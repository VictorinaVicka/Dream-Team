//
//  HeroesTableViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 11.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    var heroes = Heroe.getInfoList()


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HeroeViewCell
        let heroe = heroes[indexPath.row]
        cell.heroeLabel.text = heroe.name
        cell.heroeImage.image = heroe.image
        cell.separatorInset = .zero
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVC" {
            let vc = segue.destination as! HeroeDetailViewController
            vc.heroe = sender as? Heroe
        }
    }
    @IBAction func deleteButton(_ sender: UIBarButtonItem) {
        self.tableView.isEditing = !self.tableView.isEditing
        sender.title = (self.tableView.isEditing) ? "Done" : "Delete"
    }
}
