//
//  Sirene.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Here Siren is one of our fighters who inherits the properties of the Character class
final class Siren: Character{
    init(name: String) {
        super.init(name: name, weapon: Kama(), life: 20)
        print("")
    }
}
