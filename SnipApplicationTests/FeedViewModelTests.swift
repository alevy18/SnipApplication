//
//  FeedViewViewModelTests.swift
//  SnipApplicationTests
//
//  Created by Aaron Levy on 4/21/21.
//


import XCTest
@testable import SnipApplication

class FeedViewModelTests: XCTestCase {
    
    var vm: FeedViewModel?

    
    override func setUpWithError() throws {
        vm = FeedViewModel()
    }
    

    override func tearDownWithError() throws {
        vm = nil
    }
    
    func testGetFeedCount(){
        let count = vm?.getFeedCount()
        XCTAssertEqual(count, 0)
    }
    
    
}
