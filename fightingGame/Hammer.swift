//
//  Hammer.swift
//  fightingGame
//
//  Created by SCS on 08/01/2020.
//  Copyright © 2020 Sergio Canto. All rights reserved.
//

import Foundation

// Hammer is the weapon of the magic chest and inherits the properties of the Weapon class.
final class Hammer: Weapon {
    init() {
        super.init(damage: 20, magicImprove: 20)
    }
}
