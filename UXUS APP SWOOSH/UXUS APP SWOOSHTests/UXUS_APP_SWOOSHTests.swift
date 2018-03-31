//
//  UXUS_APP_SWOOSHTests.swift
//  UXUS APP SWOOSHTests
//
//  Created by USMAN NAWAZ on 31/03/2018.
//  Copyright © 2018 USMAN NAWAZ. All rights reserved.
//

import XCTest

class UXUS_APP_SWOOSHTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testCheckplayStringVaues() {
        let player : Players!
        player = Players()
        
        player.desiguredLeague = "we are here"
        XCTAssert(player.desiguredLeague=="we are here")
        
        
    }
    
}
