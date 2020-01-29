//
//  Team.swift
//  jeu de combat
//
//  Created by SCS on 14/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Team class where the player will choose three characters to form his team, giving them unique names
class Team {
    
    // MARK: - Properties
    
    private let numberOfCharacter = 3
    var characters = [Character]()
    static var uniqueCharacterNames = [String]()

    init() {
        createCharacters()
    }
    
    // MARK: - Methods
    
    // createCharacters is the method that will integrate the three characters by team
    private func createCharacters() {
        for i in 0..<numberOfCharacter {
            print("")
            print("Character N°\(i + 1)")
            guard let character = createCharacter() else {return}
            characters.append(character)
        }
    }
    
    // This method will allow you to choose the characters and give them a unique name
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
    
    // This Method lets us know when the characters of each team died
    func isDead() -> Bool {
        for character in characters {
            if character.life > 0 {
                return false
            }
        }
        return true
    }
    
    // This Method shows us the characteristics of each character in the teams
    func toDescribe() {
        for i in 0..<characters.count {
            characters[i].toDescribe(index: i + 1)
        }
    }
    
    // Interface characterChoiceList
    private func characterChoiceList() {
        
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
        print("")
    }
    
    
    // This method allows us to assign a unique name to each character chosen
    private func uniqueCharacterName() -> String {
        var userChoice: String = ""
        print("")
        print("===============================")
        print("")
        print("Please write your favorite name for this warrior")
        print("")
        
        repeat {
            
            if let data = readLine() {
                userChoice = data
                  if Team.uniqueCharacterNames.contains(userChoice) {
                    print("")
                    print("This name is already taken")
                    print("")
                    
                    userChoice = ""
                } else {
                    Team.uniqueCharacterNames.append(userChoice)
                }
            }
        } while userChoice == ""
        return userChoice
    }
    
    
}
