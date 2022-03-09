//
//  CCNavigationtitleLabel.swift
//  thunder
//
//  Created by zhengxu on 2022/2/26.
//

import Foundation
import UIKit

class CCNavigationTitleView: UIControl {
    let titleLabel = UILabel(frame: .zero).then {
        $0.font = UIFont.Font(20)
        $0.textColor = UIColor.black
    }
    let contentView = UIView()
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 250, height: 44)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
        self.addSubview(contentView)
        contentView.addSubview(titleLabel)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.text = "导航栏标题"
        
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.greaterThanOrEqualToSuperview()
            make.right.lessThanOrEqualToSuperview()
            make.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.greaterThanOrEqualTo(28)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
