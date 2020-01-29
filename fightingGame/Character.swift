//
//  Personnage.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Character class with properties common to all characters
class Character {
    
    // MARK: - Vars

    let name: String
    var life: Int
    var weapon: Weapon
    let maxLife: Int
    
    
    //MARK: - Init
    
    init(name: String, weapon: Weapon, life: Int) {
        
        self.name = name
        self.weapon = weapon
        self.life = life
        self.maxLife = life
        
    }
    
    
    // MARK: - Methods
    
    // In this method we attack the character if he is still alive, and we display the fighters and the damages
    func attack(target: Character) {
        if target.life > 0 && life > 0{
            target.life -= weapon.damage

            print("")
            print("===============================")
            print("")
            print("\(name) attack \(target.name) and deal \(weapon.damage) damage")
            print("")

            if target.life <= 0 {
                target.life = 0
            }
        } else {
            print("")
            print("===============================")
            print("")
            print("The Character is already dead no more game for it")
            print("")
           
        }
       
    }
    
    // In this method we heal the character if he is still alive, and we display the fighters who heal
    func heal(target: Character) {
        if target.life > 0 && life > 0 {
            target.life += weapon.magicImprove
            print("")
            print("\(name) Heal Life of \(target.name) and heal \(weapon.magicImprove) healded")
            print("")
            
            if target.life >= maxLife {
                target.life = maxLife
            }
        } else {
            print("The Character is at the max in heal")
        }
    }
    
    // This method will display the description of the character with his name, the damage of his weapon, the life and the care.
    func toDescribe(index: Int) {
        print("\(index). \(name) - Damage of the Weapon: \(weapon.damage) - Life \(life) - Care \(weapon.magicImprove) ")
    }
    
    
}


