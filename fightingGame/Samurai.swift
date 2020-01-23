//
//  Samourai.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Samurai est un de nos combattants qui hérite des propriétés de la classe Character
final class Samurai: Character{
    init(name: String) {
        super.init(name: name, weapon: Sword(), life: 20)
        print("")
    }
}
