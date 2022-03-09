//
//  Then.swift
//  CCBaseUIKit
//
//  Created by zhengxu on 2022/2/20.
//

import Foundation

public protocol Then {}

extension Then where Self: AnyObject {
    
//    let label: UILabel = UILabel().then {
//        $0.text = "helloWorld"
//        $0.textColor = UIColor.green
//    }
    public func then(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension NSObject: Then {}
