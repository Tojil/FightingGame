//
//  Arme.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Weapon class with attributes common to all weapons
class Weapon {
    let damage: Int
    let magicImprove: Int

    init(damage: Int, magicImprove: Int) {
        self.damage = damage
        self.magicImprove = magicImprove
    }
}


