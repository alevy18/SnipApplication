//
//  LoginTests.swift
//  SnipApplicationTests
//
//  Created by Aaron Levy on 4/19/21.
//

import XCTest
@testable import SnipApplication

class LoginTests: XCTestCase {
    
    var vm: LoginViewModel?
    
    override func setUpWithError() throws {
        vm = LoginViewModel.init()
    }

    override func tearDownWithError() throws {
        vm = nil
    }
    
    func testAtLeastFiveChars(){
        let p1 = "1234"
        let p2 = "12345"
        let p1Result = vm?.atLeastFiveChars(text: p1)
        let p2Result = vm?.atLeastFiveChars(text: p2)
        XCTAssertFalse(p1Result!)
        XCTAssertTrue(p2Result!)
    }
    
    func testContainsSpecialChar(){
        let p1 = "123456789"
        let p2 = "!456789"
        let p1Result = vm?.containsSpecialChar(text: p1)
        let p2Result = vm?.containsSpecialChar(text: p2)
        XCTAssertFalse(p1Result!)
        XCTAssertTrue(p2Result!)
    }
    
    func testValidatePassword(){
        let passfalse = "12345"
        let passTrue = "12345!"
        let isValidatedFalse = vm?.validatePassword(password: passfalse)
        let isValidatedTrue = vm?.validatePassword(password: passTrue)
        XCTAssertFalse(isValidatedFalse!)
        XCTAssertTrue(isValidatedTrue!)
    }
    
    
}


