//
//  CCTableViewItem.swift
//  thunder
//
//  Created by zhengxu on 2022/3/2.
//

import Foundation
import UIKit

class CCTableViewItem: NSObject {
    var cellHeight: CGFloat = 0
    var cellClassName: String = ""   // eg: FunPlayIOS.FSMineSettingCell
    
    override init() {
        super.init()
        cellClassName = NSStringFromClass(type(of: self)).replacingOccurrences(of: "Item", with: "Cell")
    }
}

class CCTableViewCell: UITableViewCell {
    var item: CCTableViewItem?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        self.item = nil
    }
}
