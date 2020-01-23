//
//  Tessen.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Tessen est une arme qui hérite des propriétés de la classe Weapon
final class Tessen: Weapon {
    init() {
        super.init(damage: 8, magicImprove: 5)
    }
}
