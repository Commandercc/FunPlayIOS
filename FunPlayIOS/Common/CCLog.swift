//
//  CCLog.swift
//  thunder
//
//  Created by zhengxu on 2022/3/2.
//

import Foundation

class CCLog {
    init(_ log: Any) {
        print(log)
    }
    
    init(_ tag: String, _ log: Any) {
        print("\(tag): \(log)")
    }
}
