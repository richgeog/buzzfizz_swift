//
//  Brain.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 19/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    func check(number: Int) -> String {
        if isDivisibleByFifteen(number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number) {
            return "Fizz"
        } else {
            return "Buzz"
        }
    }
}

