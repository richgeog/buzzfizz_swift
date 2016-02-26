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
        game.play(Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayScoreIncrementedIncorrectly() {
        game.play(Move.Number)
        XCTAssertFalse(game.score == 2)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.score)
    }
    
    func testIfMoveIsRightForFizz() {
        game.score = 2
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForFizz() {
        game.score = 1
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForBuzz() {
        game.score = 4
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForBuzz() {
        game.score = 7
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForFizzBuzz() {
        game.score = 14
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfMoveIsIncorrectForFizzBuzz() {
        game.score = 13
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightForNumber() {
        game.score = 1
        let response = game.play(Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsIncorrectForNumber() {
        game.score = 2
        let response = game.play(Move.Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
}
