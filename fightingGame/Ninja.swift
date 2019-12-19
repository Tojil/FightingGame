//
//  Ninja.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Ninja: Character{
    init(name: String) {
        super.init(name: name, weapon: Sais(), life: 110, description: "The greatest warrior")
        print("")
    }
}
