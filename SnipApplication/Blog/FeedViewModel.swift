//
//  FeedViewModel.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/21/21.
//

import Foundation


class FeedViewModel {
    
    var feedArray: [Feed] = []
    
    func getFeedCount() -> Int{
        return feedArray.count
    }
    
}


