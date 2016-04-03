//
//  ColorWithCMYKTests.swift
//  ColorWithCMYKTests
//
//  Created by GabrielMassana on 03/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import XCTest

@testable import ColorWithCMYK

class ColorWithCMYKTests: XCTestCase {
    
    override func setUp() {
        
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    //MARK: - Valid
    
    func test_colorWithCMYK_newObjectReturned_minimum() {
        
        let color = UIColor.colorWithCMYK(c: 0.0, m: 0.0, y: 0.0, k: 0.0)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }
    
    func test_colorWithCMYK_newObjectReturned_maximum() {
        
        let color = UIColor.colorWithCMYK(c: 1.0, m: 1.0, y: 1.0, k: 1.0)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }
    
    //MARK: - NoValid
    
    func test_colorWithCMYK_outOfRangeC_over() {
        
        let color = UIColor.colorWithCMYK(c: 1.1, m: 0.5, y: 0.5, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeC_under() {
        
        let color = UIColor.colorWithCMYK(c: -0.1, m: 0.5, y: 0.5, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeM_over() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: 1.1, y: 0.5, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeM_under() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: -0.1, y: 0.5, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeY_over() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: 0.5, y: 1.1, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeY_under() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: 0.5, y: -0.1, k: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeK_over() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: 0.5, y: 0.5, k: 1.1)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithCMYK_outOfRangeK_under() {
        
        let color = UIColor.colorWithCMYK(c: 0.5, m: 0.5, y: 0.5, k: -0.1)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    //MARK: - SpecificColor
    
    func test_colorWithCMYK_red() {
        
        let redColor = UIColor.colorWithCMYK(c: 0.0, m: 1.0, y: 1.0, k: 0.0)
        
        XCTAssertEqual(redColor, UIColor.redColor(), "A red Color object wasn't created");
    }
    
    func test_colorWithCMYK_green() {
        
        let greenColor = UIColor.colorWithCMYK(c: 1.0, m: 0.0, y: 1.0, k: 0.0)
        
        XCTAssertEqual(greenColor, UIColor.greenColor(), "A green Color object wasn't created");
    }
    
    func test_colorWithCMYK_blue() {
        
        let blueColor = UIColor.colorWithCMYK(c: 1.0, m: 1.0, y: 0.0, k: 0.0)
        
        XCTAssertEqual(blueColor, UIColor.blueColor(), "A blue Color object wasn't created");
    }
}
