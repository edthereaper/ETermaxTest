//
//  Request.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Request {
    
    class func get(requestURL url: String, parameter: [String: AnyObject],
                   completion: @escaping (_ status: Bool, _ response: Data) -> ()) {
        
        Alamofire.request(url).response { response in // method defaults to `.get`
            if response.error == nil {
                if let data = response.data {
                    completion(true, data)
                }
            } else {
                completion(false, Data())
            }
        }
    }
    
    func hasError(_ response: ETCasualData) -> Bool {
        printError(response)
        return response[ConstantsString.ETError.rawValue] != nil
    }
    
    func printError(_ response: ETCasualData) {
        print ("----->>>> ERROR: \(response[ConstantsString.ETError.rawValue]) <<<<-----")
    }
    
}
