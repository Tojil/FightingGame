//
//  Classe.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Here Monk is one of our fighters who inherits the properties of the Character class
final class Monk: Character{
    init(name: String) {
        super.init(name: name, weapon: Tessen(), life: 20)
        print("")
    }
}
