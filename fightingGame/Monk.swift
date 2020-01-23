//
//  Classe.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Ici Monk est un de nos combattants qui hérite des propriétés de la classe Character
final class Monk: Character{
    init(name: String) {
        super.init(name: name, weapon: Tessen(), life: 20)
        print("")
    }
}
