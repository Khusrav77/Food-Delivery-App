//
//  Utils.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/18/24.
//

import Foundation

class Utils {
    class func UDSET(data: Any, key: String) {
        UserDefaults.standard.set(data, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    class func UDValue(key: String) -> Any {
        return UserDefaults.standard.value(forKey: key) as Any
    }
    
    class func UDValueBool(key: String) -> Bool {
        return UserDefaults.standard.value(forKey: key) as? Bool ?? false
    }
    
    class func UDValueTrueBool(key: String) -> Bool {
        return UserDefaults.standard.value(forKey: key) as? Bool ?? true
    }
    
    class func UDRemove(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
}
