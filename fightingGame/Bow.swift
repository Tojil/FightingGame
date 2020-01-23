//
//  Arc.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Bow est une arme qui hérite des propriétés de la classe Weapon
final class Bow: Weapon {
    init() {
        super.init(damage: 10, magicImprove: 5)
    }
}
