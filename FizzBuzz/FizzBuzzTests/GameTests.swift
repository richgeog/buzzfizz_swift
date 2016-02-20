//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 20/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testGameDoesNotStartAtFour() {
        XCTAssertFalse(game.score == 4)
    }
    
    func testOnPlayScoreIncrementedCorrectly() {
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayScoreIncrementedIncorrectly() {
        game.play("1")
        XCTAssertFalse(game.score == 2)
    }
    
    func testIfMoveIsRightForFizz() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForFizz() {
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForBuzz() {
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForBuzz() {
        game.score = 7
        let result = game.play("Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForFizzBuzz() {
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, true)
    }

    func testIfMoveIsIncorrectForFizzBuzz() {
        game.score = 13
        let result = game.play("Fizzbuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForNumber() {
        game.score = 1
        let result = game.play("2")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForNumber() {
        game.score = 2
        let result = game.play("3")
        XCTAssertEqual(result, false)
        
    }
}
