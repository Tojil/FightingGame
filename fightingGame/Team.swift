//
//  Team.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Team {
    var numberOfCharacter = 3
    var characters = [Character]()
    static var uniqueCharacterNames = [String]()
    
    init() {
        createCharacters()
    }
    
    private func createCharacters() {
        
        for i in 0..<numberOfCharacter {
            print("")
            print("Character N°\(i + 1)")
            guard let character = createCharacter() else {return}
            characters.append(character)
        }
    }
    
    // elle va se charger de creer un seul personnage en fonction de l'utilisateur
    
    private func createCharacter() -> Character? {
        var userChoice = 0
        characterChoiceList()
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5 && userChoice != 6
        
        switch userChoice {
        case 1:
            return Archer(name: uniqueCharacterName())
        case 2:
            return Samurai(name: uniqueCharacterName())
        case 3:
            return Magus(name: uniqueCharacterName())
        case 4:
            return Ninja(name: uniqueCharacterName())
        case 5:
            return Monk(name: uniqueCharacterName())
        case 6:
            return Siren(name: uniqueCharacterName())
        default:
            return nil
        }
        
    }
    func isDead() -> Bool {
        for character in characters {
            if character.life > 0 {
                return false
            }
        }
        return true
    }
    
    
    func toDescribe() {
        
        for i in 0..<characters.count {
            characters[i].toDescribe(index: i + 1)
        }
        
    }
    
    // Interface characterChoiceList
    func characterChoiceList() {
        
        print("")
        print("===============================")
        print("")
        print("Hello, select the three characters of your team")
        print("")
        print("1 - Archer")
        print("2 - Samurai")
        print("3 - Magus")
        print("4 - Ninja")
        print("5 - Monk")
        print("6 - Siren")
        print("")
        print("===============================")
        
    }
    
    
    
    func uniqueCharacterName() -> String {
        var userChoice: String = ""
        print("Please write your favorite name for this warrior")
        repeat {
            if let data = readLine() {
                userChoice = data
                if Team.uniqueCharacterNames.contains(userChoice) {
                    print("This name is allready takend")
                    userChoice = ""
                } else {
                    Team.uniqueCharacterNames.append(userChoice)
                }
            }
        } while userChoice == ""
        return userChoice
    }
    
    
}
