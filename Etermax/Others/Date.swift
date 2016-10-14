//
//  Date.swift
//  ETReddit
//
//  Created by Eduardo Rodriguez on 10/14/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation

extension Date {
    func toString() -> String {
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = dateFormatter.string(from: date as Date)
        return dateString
    }
    
    static func formatRedditDate(dateInterval: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970:dateInterval)
        return date.toString()
    }
}
