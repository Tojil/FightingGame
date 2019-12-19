//
//  Mage.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Magus: Character{
    init(name: String) {
        super.init(name: name, weapon: Scepter(), life: 110, description: "The greatest Wizard")
        print("")
    }
}
