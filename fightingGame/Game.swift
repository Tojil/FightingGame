//
//  Jeu de Combat.swift
//  jeu de combat
//
//  Created by SCS on 12/11/2019.
//  Copyright © 2019 Sergio Canto. All rights reserved.
//

import Foundation

class Game {
    
    var teams = [Team]()
    
    //MARK: - Methodes
    func start() {
        createTeams()
        fight()
    }

    func createTeams() {
        for i in 0..<2 {
            print("Team number \(i + 1)")
            let team = Team()
            teams.append(team)
        }
    }
    
    func fight() {
        while true {
            for i in 0..<2 {
                print("================================")
                print("")
                print("Team number \(i + 1) select your character")
                print("")
                teams[i].toDescribe()
                
                let character = teams[i].characters[userChoice() - 1]
                whatToDo()
                let choiceUser = healOrAttack()
                if choiceUser == 1 {
                    print("================================")
                    print("")
                    print("Choose the character to attack")
                    print("")
                    
                    if i == 0 {
                        teams[i + 1].toDescribe()
                        let enemyCharacter = teams[i + 1].characters[userChoice() - 1]
                        character.attack(target: enemyCharacter)
                        if teams[i + 1].isDead() {
                            return
                        }
                    } else {
                        teams[i - 1].toDescribe()
                        
                        let enemyCharacter = teams[i - 1].characters[userChoice() - 1]
                        character.attack(target: enemyCharacter)
                        if teams[i - 1].isDead() {
                            return
                        }
                    }
                } else {
                    print("================================")
                    print("")
                    print("Choose the character to heal")
                    print("")
                    teams[i].toDescribe()
                    let healCharacter = teams[i].characters[userChoice() - 1]
                    character.heal(target: healCharacter)

                }
                
                
            }
        }
    }
    
    
    func userChoice() -> Int {
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
    
    func healOrAttack() -> Int {
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
    
    
    
    func whatToDo() {
        print("================================")
        print("")
        print("Which Choice ?")
        print("")
        print("1. attack")
        print("2. Heal")
        print("")
    }
    
    
    func improveOrAttack() {
        while true {
            for i in 1...2 {
                print("===============================")
                print("")
                print("Team number \(i + 1) select what to do")
                print("")
                whatToDo()
                
                if i == 1 {
                    
                } else {
                    
                }
                return
            }
        }
    }
    
    
}









//func fight() {
//    while true {
//        for i in 0..<2 {
//            print("================================")
//            print("")
//            print("Team number \(i + 1) select your character")
//            print("")
//            teams[i].toDescribe()
//
//            let character = teams[i].characters[userChoice() - 1]
//            print("================================")
//            print("")
//            print("Choose the character to attack")
//            print("")
//
//            if i == 0 {
//                teams[i + 1].toDescribe()
//                let enemyCharacter = teams[i + 1].characters[userChoice() - 1]
//                character.attack(target: enemyCharacter)
//                if teams[i + 1].isDead() {
//                    return
//                }
//            } else {
//                teams[i - 1].toDescribe()
//
//                let enemyCharacter = teams[i - 1].characters[userChoice() - 1]
//                character.attack(target: enemyCharacter)
//                if teams[i - 1].isDead() {
//                    return
//                }
//            }
//
//        }
//
//    }
//}




//    func fight() {
//        var userChoice = 0
//        print("Team number 1 select your character")
//        teams[0].toDescribe()
//        repeat {
//            if let data = readLine() {
//                if let dataToInt = Int(data) {
//                    userChoice = dataToInt
//                }
//            }
//
//        } while userChoice != 1 && userChoice != 2 && userChoice != 3
//        let character = teams[0].characters[userChoice - 1]
//        print("Choose the character to attack")
//        userChoice = 0
//        teams[1].toDescribe()
//        repeat {
//            if let data = readLine() {
//                if let dataToInt = Int(data) {
//                    userChoice = dataToInt
//                }
//            }
//
//        } while userChoice != 1 && userChoice != 2 && userChoice != 3
//        let enemyCharacter = teams[1].characters[userChoice - 1]
//        character.attack(target: enemyCharacter)
//    }


















//1. Initialiser le jeu en demandant à chaque joueur de sélectionner les personnages de son équipe. Le joueur devra choisir pour chaque personnage un nom différent de tous les autres personnages déjà créés dans le jeu.
//
//2. Réaliser le combat au tour par tour. L’idée, c’est donc que le joueur 1 puisse choisir un personnage de son équipe, choisir le personnage qui va subir l’action (dans l’équipe adverse en cas d’attaque ou dans son équipe en cas de soin), de réaliser l’action, puis de vérifier si la partie est terminée, sinon c’est au tour du joueur 2 ;
//
//3. Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts), tu affiches le joueur qui a gagné et les statistiques de jeu : le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.).
//
//Si je résume la base du jeu : celui-ci est composé de deux joueurs. Chaque joueur a une équipe composée de trois personnages. Chaque personnage a des points de vie, un nom et une arme.
//
//Ah oui, j’ai oublié de te préciser, les personnages attaquent avec une arme. C’est elle qui doit déterminer les dégâts que le personnage va réaliser. Une autre fonctionnalité qu’il faut absolument intégrer (j’aimerais ajouter un peu de hasard dans le jeu) : un coffre peut apparaître devant un personnage quand celui joue son tour. Ce coffre contiendra forcément une arme (plus ou moins puissante que celle existante).
//
//J’attends avec impatience ton projet !
//
//Si tu pouvais aussi le commenter au maximum. Je sais, ça revient à dire: « n’oublie pas de respirer », mais comme c’est moi qui vais utiliser ton projet, et que je ne suis pas une développeuse (même si j’ai des bases), c’est encore plus important.
//
//Merci beaucoup !
