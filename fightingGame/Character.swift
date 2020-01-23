//
//  Personnage.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Classe Character avec les propriétés comunes à tous les personnages
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
    
    // Ici cette méthode nous sert pour attaquer le personnage choisi
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
    
    // Cette méthode va soigner le personnage choisi
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
    
    // Cette méthode va afficher la description du personnage avec son nom,les degats de son arme, la vie et le soin
    func toDescribe(index: Int) {
        print("\(index). \(name) - Damage of the Weapon: \(weapon.damage) - Life \(life) - Care \(weapon.magicImprove) ")
    }
    
    
}


