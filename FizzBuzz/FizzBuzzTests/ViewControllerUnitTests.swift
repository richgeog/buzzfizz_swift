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
    
    func test() {
        XCTAssertTrue(true)
    }
    
}
