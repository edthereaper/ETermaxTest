//
//  ExchangeInteractor.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import SwiftyJSON

typealias callbackRequestReddit =  (_ status: Bool, _ resonse: [MReddit], _ date: String) -> ()

class ExchangeDatasource {
    
    init() {}
    
    func getDataFromApiFixer(_ completion: @escaping callbackRequestReddit) {
        
        self.loadCacheIfNeeded { (status, reddits, date) in
            completion(status, reddits, getDateLastUpdate())
        }
        
        Request.get(requestURL: ETMaxURLs.exchange.rawValue, parameter: [:]) { (status, response) in
            if status {

                let json = JSON(data: response)
                if let str = json.rawString() {
                    self.saveInCase(str)
                    self.saveDateInCase(Date().toString())
                    Cache.upFlag()
                }
                if let dict: [String: Any] = json.dictionaryObject{
                    let reddits: Reddits = Reddits.parser(response: dict )!
                    completion(true, reddits.reddits, Date().toString())
                }
                
                return
            } else {
                print ("error")
                completion(false, [], "")
            }
        }

    }
    
    func loadCacheIfNeeded(_ completion: callbackRequestReddit) {
        
        if LocalData.exist(ConstantsString.ETBackup.rawValue) {
            
            let dateLastUpdate = LocalData.get(ConstantsString.ETBackup.rawValue) as! String
            guard let data = dateLastUpdate.data(using: String.Encoding.utf8) else {
                return
            }
            let json = JSON(data: data
            )
            if let dict: [String: Any] = json.dictionaryObject {
                let reddits: Reddits = Reddits.parser(response: dict )!
                completion(true, reddits.reddits, "")
                return
            }
        }
    
    }
    
    func saveInCase(_ response: String) {
        LocalData.set(ConstantsString.ETBackup.rawValue, object: response as AnyObject)
    }
    
    func saveDateInCase(_ date: String) {
        LocalData.set(LocalStorage.lastUpdate.rawValue, object: date as AnyObject)
    }
    
    func getDateLastUpdate() -> String {
        guard let str: String = LocalData.get(LocalStorage.lastUpdate.rawValue) as! String? else {
            return ""
        }
        return str
    }

}
