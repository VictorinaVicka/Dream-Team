//
//  Heroes.swift
//  Dream Team
//
//  Created by Саша Гужавин on 11/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

struct Hero {
    
    let name: String?
    let image: UIImage?
    let realName: String?
    let location: String?
    let colorEye: String?
    let colorHair: String?
    let firstAppearance: String?
    let superPower: String?
    let allie: String?
    let enemie: String?
    let information: String?
    
    static func getInfoList() -> [Hero] {
        
        var heroes = [Hero]()
        
        let names = HeroesDataManager.shared.heroesName
        let image = HeroesDataManager.shared.heroesImage
        let realNames = HeroesDataManager.shared.heroesRealName
        let locations = HeroesDataManager.shared.heroesLocation
        let colorEyes = HeroesDataManager.shared.heroesColorEye
        let colorHairs = HeroesDataManager.shared.heroesColorHair
        let firstAppearances = HeroesDataManager.shared.heroesFirstAppearance
        let superPowers = HeroesDataManager.shared.heroesSuperPower
        let allie = HeroesDataManager.shared.heroesAllie
        let enemie = HeroesDataManager.shared.heroesEnemie
        let informations = HeroesDataManager.shared.heroesBio
        
        
        
        for index in 0..<names.count {
            let hero = Hero(name: names[index],
                              image: image[index],
                              realName: realNames[index],
                              location: locations[index],
                              colorEye: colorEyes[index],
                              colorHair: colorHairs[index],
                              firstAppearance: firstAppearances[index],
                              superPower: superPowers[index],
                              allie: allie[index],
                              enemie: enemie[index],
                              information: informations[index])
            heroes.append(hero)
        }
        return heroes
    }

}
