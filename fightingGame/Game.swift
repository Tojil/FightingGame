//
//  Jeu de Combat.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

// Class Game where it will play the games
class Game {
    
    // MARK: - Properties
    
    private var teams = [Team]()
    private var sumOfParts = 0

    //MARK: - Methodes
    
    // The Start method which starts the creation of teams, fights and end of game statistics
    func start() {
        createTeams()
        fight()
        showGameSettings()
    }
    
    // This method will constitute the teams of the players
    private func createTeams() {
        for i in 0..<2 {
            print("")
            print("================================")
            print("Team number \(i + 1)")
            let team = Team()
            teams.append(team)
        }
    }
    
    // This method will give us the winning team
    private func showGameSettings() {
        for (index, team) in teams.enumerated() {
            if !team.isDead() {
                print("")
                print("================================")
                print("")
                print("The Winner is team \(index + 1)")
                print("")
            }
        
        }
        for team in teams {
            team.toDescribe()
        }
        
        print("================================")
        print("")
        print("Number of parts that have been played = \(sumOfParts)")
        print("")
        print("================================")
        print("")
        
    }

    // That's the method that brings up the chest magic random and can change his weapon for a weapon more powerful
    private func chestAppear(character: Character) {
        let randomInt = Int(arc4random_uniform(UInt32(4)))
        if randomInt == 2 {
            print("")
            print("Congratulations you won a Magic Chest")
            print("")
            character.weapon = Hammer()
            print("\(character.name) You win the new weapon Hammer")
            print("")
        }
    }
    // In this method players will be able to take turns fighting
    private func fight() {

            while true {
            sumOfParts += 1

            for i in 0..<2 {
                print("================================")
                print("")
                print("Team number \(i + 1) select your character")
                print("")
                
                teams[i].toDescribe()
                
                print("")
                print("===============================")
                print("")
                
                let character = teams[i].characters[userChoice() - 1]
                chestAppear(character: character)
                whatToDo()
                
                let choiceUser = healOrAttack()
                
                if choiceUser == 1 {
                    print("")
                    print("================================")
                    print("")
                    print("Choose the character to attack")
                    print("")

                    if i == 0 {
                        teams[i + 1].toDescribe()
                        print("")
                        print("===============================")
                        print("")
                        
                        let enemyCharacter = teams[i + 1].characters[userChoice() - 1]
                        character.attack(target: enemyCharacter)
                        if teams[i + 1].isDead() {
                            return
                        }
                    } else {
                        teams[i - 1].toDescribe()
                        print("")
                        print("================================")
                        print("")

                        let enemyCharacter = teams[i - 1].characters[userChoice() - 1]
                        character.attack(target: enemyCharacter)
                        if teams[i - 1].isDead() {
                            return
                        }
                    }
                }else {
                    print("")
                    print("================================")
                    print("")
                    print("Choose the character to heal")
                    print("")
                    teams[i].toDescribe()
                    print("")
                    print("===============================")
                    print("")
                    
                    let healCharacter = teams[i].characters[userChoice() - 1]

                    character.heal(target: healCharacter)

                }
            }
        }
    }
    
    // this method allows us to recover the choice of the user
    private func userChoice() -> Int {
        var userChoice = 0
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
        return userChoice
    }

    
    // this method allows us to recover the choice of the user
    private func healOrAttack() -> Int {
        var userChoice = 0
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2
        return userChoice
    }
    
    
    // Interface whatToDo
    private func whatToDo() {
        print("")
        print("================================")
        print("")
        print("Which Choice ?")
        print("")
        print("1. Attack")
        print("2. Heal")
        print("")
        print("================================")
        print("")
    }
}


