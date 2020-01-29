//
//  Archer.swift
//  jeu de combat
//
//  Created by SCS on 13/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Here Archer is one of our fighters who inherits the properties of the Character class
final class Archer: Character {
    init(name: String) {
        super.init(name: name, weapon: Bow(), life: 20)
        print("")
}
}
