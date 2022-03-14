//
//  CCLoadingView.swift
//  thunder
//
//  Created by zhengxu on 2022/2/26.
//

import Foundation
import UIKit
import SnapKit

// MARK: CCActivityLoadingView
class CCActivityLoadingView: UIView {
    private let activityView = UIActivityIndicatorView(style: .gray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.isHidden = true
        self.addSubview(activityView)
        activityView.snp.makeConstraints { make in
            make.center.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startLoding(_ showLoadingView: Bool = true) {
        self.isHidden = false
        guard showLoadingView else { return }
        self.activityView.startAnimating()
    }
    
    func stopLoading() {
        self.isHidden = true
        self.activityView.stopAnimating()
    }
}


