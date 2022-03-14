//
//  CCLog.swift
//  thunder
//
//  Created by zhengxu on 2022/3/2.
//

import Foundation

class CC {
    
    static func log(_ log: Any) {
        print(log)
    }

    static func log(_ tag: String, _ log: Any) {
        print("\(tag): \(log)")
    }
}
