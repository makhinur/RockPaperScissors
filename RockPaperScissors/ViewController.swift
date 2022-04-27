 //
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Makhinur Talgatova on 27.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var yourSignImg: UIButton!
    @IBOutlet weak var computerSignImg: UIButton!
    
    @IBAction func rock(_ sender: UIButton) {
        let computerSign = Sign.randomSign()
        yourSignImg.setTitle(Sign.rock.rawValue, for: .normal)
        computerSignImg.setTitle(computerSign.rawValue, for: .normal)
        label.text = playGame(you: .rock, computer: computerSign)
    }
    
    @IBAction func paper(_ sender: UIButton) {
        let computerSign = Sign.randomSign()
        yourSignImg.setTitle(Sign.paper.rawValue, for: .normal)
        computerSignImg.setTitle(computerSign.rawValue, for: .normal)
        label.text = playGame(you: .paper, computer: computerSign)
    }
    
    @IBAction func scissors(_ sender: UIButton) {
        let computerSign = Sign.randomSign()
        yourSignImg.setTitle(Sign.scissors.rawValue, for: .normal)
        computerSignImg.setTitle(computerSign.rawValue, for: .normal)
        label.text = playGame(you: .scissors, computer: computerSign)
    }
    

    enum Sign: String {
        case rock = "👊"
        case paper = "✋"
        case scissors = "✌️"
        
        static func randomSign() -> Sign {
            let sign = Int.random(in: 0...2)
            if sign == 0 {
                return .rock
            } else if sign == 1 {
                return .paper
            } else {
                return .scissors
            }
        }
    }
    
    func playGame(you: Sign, computer: Sign) -> String {
        if you == computer { return "IT'S A TIE"}
        else if you == .rock && computer == .scissors { return "YOU WON"}
        else if you == .scissors && computer == .paper { return "YOU WON"}
        else if you == .paper && computer == .rock { return "YOU WON"}
        else { return "YOU LOST"}
    }
}

