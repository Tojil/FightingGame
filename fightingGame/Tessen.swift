//
//  Tessen.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Tessen is a weapon that inherits the properties of the Weapon class
final class Tessen: Weapon {
    init() {
        super.init(damage: 8, magicImprove: 5)
    }
}
