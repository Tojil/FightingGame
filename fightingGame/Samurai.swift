//
//  Samourai.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Here Samurai is one of our fighters who inherits the properties of the Character class
final class Samurai: Character{
    init(name: String) {
        super.init(name: name, weapon: Sword(), life: 20)
        print("")
    }
}
