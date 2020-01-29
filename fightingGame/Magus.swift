//
//  Mage.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Here Magus is one of our fighters who inherits the properties of the Character class
final class Magus: Character{
    init(name: String) {
        super.init(name: name, weapon: Scepter(), life: 20)
        print("")
    }
}
