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
    
    func addFeedForTest(){
        let feed = Feed.init(name: "AnitaO", location: "Miami", GP: "150", hashTags: "#Shirt, #Flannel, #DIY", description: "Nifty Little DIY today! Tools used: Scissors, Time: 1 hour.", city: "Miami")
        feedArray.append(feed)
    }
    
}


