//
//  UIViewController+Addition.swift
//  thunder
//
//  Created by zhengxu on 2022/2/26.
//

import Foundation
import UIKit

extension UIViewController {
    var defaultNavigationController: UINavigationController {
        if self.isKind(of: UINavigationController.self) {
            return self as! UINavigationController
        } else if (self.navigationController != nil) {
            return self.navigationController!
        }
        let navController = UINavigationController(rootViewController: self)
        return navController
    }
}
