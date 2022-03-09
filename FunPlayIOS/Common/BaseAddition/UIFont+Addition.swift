//
//  UIFont+Addition.swift
//  CCBaseUIKit
//
//  Created by zhengxu on 2022/2/20.
//

import Foundation
import UIKit

extension UIFont {
    class func Font(_ value: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: value)
    }
    
    class func MediumFont(_ value: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: value, weight: .medium)
    }
    
    class func BoldFont(_ value: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: value)
    }
}
