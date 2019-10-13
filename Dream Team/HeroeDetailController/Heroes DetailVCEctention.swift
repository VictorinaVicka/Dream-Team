//
//  Heroes DetailVCEctention.swift
//  Dream Team
//
//  Created by Mr. Bear on 12/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension HeroDetailViewController {
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

//    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        UITableView.automaticDimension
//    }
    
    // MARK: - Metods
    
    func descriptionElementsFilling() {
     
        descriptionLabels[0].text = hero.realName
        descriptionLabels[1].text = hero.location
        descriptionLabels[2].text = hero.colorEye
        descriptionLabels[3].text = hero.colorHair
        descriptionLabels[4].text = hero.firstAppearance
        descriptionLabels[5].text = hero.superPower
        descriptionLabels[6].text = hero.allie
        descriptionLabels[7].text = hero.enemie
        descriptionLabels[8].text = hero.information
        
    }
}
