//
//  Heroes.swift
//  Dream Team
//
//  Created by Саша Гужавин on 11/10/2019.
//  Copyright © 2019 Денис Иванов. All rights reserved.
//

import UIKit

struct Heroe {
    
    let name: String?
    let image: UIImage?
    let realName: String?
    let location: String?
    let colorEyes: String?
    let colorHair: String?
    let firstAppearance: String?
    let superPower: String?
    let allies: String?
    let enemies: String?
    let age: String?
    let information: String?
    
    static func getInfoList() -> [Heroe] {
        
        var heroes: [Heroe] = []
        
        let names = HeroesDataManager.shared.heroesName
        let bio = HeroesDataManager.shared.heroesBio
        let image = HeroesDataManager.shared.heroesImage
        
        for index in 0..<names.count {
            let heroe = Heroe(name: names[index], image: image[index], realName: nil, location: nil, colorEyes: nil, colorHair: nil, firstAppearance: nil, superPower: nil, allies: nil, enemies: nil, age: nil, information: bio[index])
            heroes.append(heroe)
        }
        return heroes
    }

}
