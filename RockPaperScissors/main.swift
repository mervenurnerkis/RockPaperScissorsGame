//
//  main.swift
//  RockPaperScissors
//
//  Created by Merve Nur Nerkis on 21.06.2023.
//

import Foundation

enum GameElement: String {
    case rock, paper, scissors
    
    static var allCases: [GameElement] {
        return [.rock, .paper, .scissors]
    }
    
    var gameElement: String {
        switch self {
        case .rock:
            return "✊🏻"
        case .paper:
            return "🫲🏻"
        case .scissors:
            return "✌🏻"
        }
    }
}

enum GameState {
    case win, lose, scoreless
    var gameState: String {
        switch self {
        case .win:
            return "You win"
        case .lose:
            return "You lost"
        case .scoreless:
            return "No-win"
        }
    }
}

func play(myElement: GameElement) {
    guard let computerElement = GameElement.allCases.randomElement() else {
        print("Something went wrong")
        return
    }
    var resultState: GameState = .scoreless
    switch (myElement, computerElement) {
    case (.rock, .paper), (.paper, .scissors), (.scissors, .rock): resultState = .lose
    case (.rock, .scissors), (.paper, .rock), (.scissors, .paper): resultState = .win
    default: resultState = .scoreless
    }
    print("""
          Your choice: \(myElement.gameElement)
          Computer choice: \(computerElement.gameElement)
          Result: \(resultState.gameState)
          """)
}

play(myElement: .rock)







