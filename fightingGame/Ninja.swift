//
//  Ninja.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Ninja est un de nos combattants qui hérite des propriétés de la classe Character
final class Ninja: Character{
    init(name: String) {
        super.init(name: name, weapon: Sais(), life: 20)
        print("")
    }
}
