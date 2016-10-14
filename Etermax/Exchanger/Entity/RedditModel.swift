//
//  RedditModel.swift
//  ETReddit
//
//  Created by Eduardo Rodriguez on 10/13/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper
import SwiftyJSON

class MReddit: Mappable {
    
    var title: String = ""
    var author: String = ""
    var thumbnail: String = ""
    var num_comments: Int = 0
    var subreddit: String = ""
    var ups: Int = 0
    var created: Double = 0.0
    
    required init?(map: Map) {
        
    }
    
    init() {
    
    }
    
    func mapping(map: Map) {
        self.title <- map ["data.title"]
        self.author <- map ["data.author"]
        self.thumbnail <- map ["data.thumbnail"]
        self.num_comments <- map ["data.num_comments"]
        self.subreddit <- map ["data.subreddit"]
        self.ups <- map ["data.ups"]
        self.subreddit <- map ["data.subreddit"]
        self.created <- map ["data.created"]
    }

}

class Reddits: Mappable {
    
    var reddits: [MReddit] = []
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        self.reddits <- map ["data.children"]
    }
    
    class func parser<U: Mappable>(response: [String : Any]) -> U? {
        return Mapper<U>().map(JSON: response)
    }
    
}
