//
//  Archer.swift
//  jeu de combat
//
//  Created by SCS on 13/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Archer est un de nos combattants qui hérite des propriétés de la classe Character
final class Archer: Character {
    init(name: String) {
        super.init(name: name, weapon: Bow(), life: 20)
        print("")
}
}
