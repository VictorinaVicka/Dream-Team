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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let heroe = heroes[indexPath.row]
        cell.textLabel?.text = heroe.name
        cell.imageView?.image = heroe.image
        return cell
    }

}
