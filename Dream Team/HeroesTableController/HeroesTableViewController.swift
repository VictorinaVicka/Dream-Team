//
//  HeroesTableViewController.swift
//  Dream Team
//
//  Created by Денис Иванов on 11.10.2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

class HeroesTableViewController: UITableViewController {
    
    var heroes = Hero.getInfoList()


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HeroViewCell
        let heroe = heroes[indexPath.row]
        cell.heroeLabel.text = heroe.name
        cell.heroeImage.image = heroe.image
        cell.separatorInset = .zero
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVC" {
            let vc = segue.destination as! HeroDetailViewController
            vc.hero = sender as? Hero
        }
    }
        
    @IBAction func deleteButton(_ sender: UIBarButtonItem) {
        if !tableView.isEditing {
            setEditing(true, animated: true)
            sender.title = "Done"
        } else {
            setEditing(false, animated: true)
            sender.title = "Edit"
        }
    }
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "Next", sender: nil)
    }
}
