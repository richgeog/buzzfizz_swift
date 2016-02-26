//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 25/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!

    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncremenstScore() {
        viewController.game?.score = 0
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementsScore() {
        viewController.game?.score = 4
        viewController.play(Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        viewController.play(Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveDoesNotIncrementScore() {
        viewController.game?.score = 1
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertNotEqual(newScore, 3)
    }
}
