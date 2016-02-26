
//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 19/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game : Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBOutlet weak var fizzButton: UIButton!
    
    @IBOutlet weak var buzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
     }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        if sender == numberButton {
          play(Move.Number)
        } else if sender == fizzButton {
            play(Move.Fizz)
        } else {
            play(Move.Buzz)
        }
    }
  
}