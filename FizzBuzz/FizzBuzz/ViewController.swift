
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
            numberButton.setTitle("1", forState: .Normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        play("1")
    }
  
}