//
//  Sabre.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Sword is a weapon that inherits the properties of the Weapon class
final class Sword: Weapon {
    init() {
        super.init(damage: 10, magicImprove: 5)
    }
}
