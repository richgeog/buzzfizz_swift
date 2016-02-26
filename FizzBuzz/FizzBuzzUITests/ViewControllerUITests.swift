//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Richard Geoghegan on 26/02/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import XCTest
//@testable import FizzBuzz

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTapNumberButtonIncrementsScore() {
        XCUIApplication().buttons["0"].tap()
        let newScore = XCUIApplication().buttons["1"].label
        XCTAssertEqual(newScore, "1")
    }

}

