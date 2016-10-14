//
//  LocalData.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation

class LocalData {
    
    class func get(_ key: String) -> AnyObject? {
        let defaults = UserDefaults.standard
        guard let object = defaults.object(forKey: key) else {
            return nil
        }
        return object as AnyObject?
        
    }
    
    class func set(_ key: String, object: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(object, forKey: key)
        defaults.synchronize()
    }
    
    class func exist(_ key: String) -> Bool {
        let defaults = UserDefaults.standard
        guard defaults.object(forKey: key) != nil else {
            return false
        }
        return true
    }
    
}

class Cache {
    class func wasLoaded() -> Bool {
        return (LocalData.get(ConstantsString.alreadyLoaded.rawValue) == nil) ? false : true
    }
    
    class func upFlag(){
        if LocalData.get(ConstantsString.alreadyLoaded.rawValue) == nil {
            LocalData.set(ConstantsString.alreadyLoaded.rawValue, object: "OK" as AnyObject)
        }
    }
}
