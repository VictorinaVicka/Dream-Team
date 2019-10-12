//
//  Heroes DetailVCEctention.swift
//  Dream Team
//
//  Created by Mr. Bear on 12/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

extension HeroDetailViewController {

    func descriptionElementsFilling () {
        
        descriptionTextField[0].text = hero.realName
        descriptionTextField[1].text = hero.location
        descriptionTextField[2].text = hero.colorEye
        descriptionTextField[3].text = hero.colorHair
        descriptionTextField[4].text = hero.firstAppearance
        descriptionTextField[5].text = hero.superPower
        descriptionTextField[6].text = hero.allie
        descriptionTextField[7].text = hero.enemie
        
    }
    
}
