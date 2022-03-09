//
//  UIView+Addition.swift
//  thunder
//
//  Created by zhengxu on 2022/2/26.
//

import Foundation
import UIKit

extension UIView {
    var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.origin.x = value
            self.frame = frame
        }
    }
    
    var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.origin.y = value
            self.frame = frame
        }
    }
    
    var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.origin.x = value - frame.size.width
            self.frame = frame
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.origin.y = value - frame.size.height
            self.frame = frame
        }
    }
    
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.size.width = value
            self.frame = frame
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set(value) {
            var frame: CGRect = self.frame
            frame.size.height = value
            self.frame = frame
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set(value) {
            self.center = CGPoint(x: value, y: self.center.y)
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set(value) {
            self.center = CGPoint(x: self.center.x, y: value)
        }
    }
}


extension UIView {
    // 设置圆角
    func setCornerRadius(radius: CGFloat, roundingCorners: UIRectCorner) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: roundingCorners, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        maskLayer.shouldRasterize = true
        maskLayer.rasterizationScale = .screenScale
        self.layer.mask = maskLayer
    }
}
