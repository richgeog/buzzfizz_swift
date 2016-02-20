//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 19/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(2)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(7)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(11)
        XCTAssertEqual(result, false)
    }
    
}
