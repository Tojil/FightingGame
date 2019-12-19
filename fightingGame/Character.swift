//
//  Personnage.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Character {
    
    // MARK: - Vars
    var name: String
    var life: Int
    var weapon: Weapon
    
    var description: String
    
    
    //MARK: - Init
    init(name: String, weapon: Weapon, life: Int, description: String) {
        self.name = name
        self.weapon = weapon
        self.life = life
        
        self.description = description
        
    }
    
    
    // METHODES
    
    func attack(target: Character) {
        target.life -= weapon.damage
        print("\(name) attack \(target.name) and deal \(weapon.damage) damage")
        
    }
    
    func heal(target: Character) {
        target.life += weapon.magicImprove
        print("\(name) Heal Life of \(target.name) and deal \(weapon.magicImprove) healded")
    }
    
    
    func toDescribe(index: Int) {
        print("\(index). \(name) - Damage of the Weapon: \(weapon.damage) - Life \(life) - Care \(weapon.magicImprove) ")
    }
    
    
}


















//func improveOrAttack() {
//    var userChoice = 0
//    whatToDo()
//    repeat {
//        if let data = readLine() {
//            if let dataToInt = Int(data) {
//                userChoice = dataToInt
//
//            }
//        }
//    }   while userChoice != 1 && userChoice != 2
//
//    if userChoice == 1 {
//
//    }
//    return
//}
//
//
//func whatToDo() {
//    print("Which Choice ?")
//    print("")
//    print("1. attack")
//    print("2. Improve his weapon")
//
//}



