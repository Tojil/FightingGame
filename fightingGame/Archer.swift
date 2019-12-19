//
//  Archer.swift
//  jeu de combat
//
//  Created by SCS on 13/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Archer: Character {
    init(name: String) {
        super.init(name: name, weapon: Bow(), life: 110, description: "The greatest Arrow")
        print("")
}
}
