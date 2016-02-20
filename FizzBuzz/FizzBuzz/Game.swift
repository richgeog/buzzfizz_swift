//
//  Game.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 20/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        score++
        
        let result = brain.check(score)
        
        if result == move {
            return true
        } else {
            return false
        }
    }
    
}