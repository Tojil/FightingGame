//
//  Hammer.swift
//  fightingGame
//
//  Created by SCS on 08/01/2020.
//  Copyright © 2020 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Hammer est l'arme qui se trouve dans le coffre magic
final class Hammer: Weapon {
    init() {
        super.init(damage: 20, magicImprove: 20)
    }
}
