//
//  CCLocalTool.swift
//  thunder
//
//  Created by zhengxu on 2022/2/24.
//

import Foundation

class CCLocal: NSObject {
    
    static func saveValue(value: String, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func fetchValue(key: String) -> Any? {
        UserDefaults.standard.object(forKey: key)
    }
    
    static func removeValue(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
