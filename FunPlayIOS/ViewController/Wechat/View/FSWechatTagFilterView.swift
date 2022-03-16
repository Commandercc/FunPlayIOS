//
//  FSWechatTagFilterView.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/17.
//

import Foundation
import UIKit

final class FSTagAtomicView: UIView {
    private var title: String = ""
    private let label = UILabel(frame: .zero).then {
        $0.font = .titleFont
        $0.textColor = .black
        $0.textAlignment = .center
    }
    private let lineView = UIView(frame: .zero).then {
        $0.backgroundColor = .redTheme
    }
    
    init(title: String) {
        super.init(frame: .zero)
        self.title = title
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(label)
        self.addSubview(lineView)
        lineView.centerX = self.centerX
        lineView.bottom = self.bottom
        lineView.width = 10
        lineView.height = 3
        label.centerX = self.centerX
        label.top = self.top
        
        let attrText = NSMutableAttributedString(string: title)
        attrText.addAttributes([NSAttributedString.Key.font: UIFont.titleFont, NSMutableAttributedString.Key.foregroundColor: UIColor.black], range: NSRange(location: 0, length: title.count))
        let size = attrText.size()
        CC.log("tag size ", size)
        label.width = size.width + 20
        label.height = size.height + 5
        label.text = title
        self.width = label.width
        self.height = 44
        CC.log("atomic view size", self.bounds.size)
        self.layoutIfNeeded()
    }
    
}

class FSWechatTagFilterView: UIView {
    private let scrollView = UIScrollView(frame: .zero)
    var tags: [String] {
        didSet {
            updateViews(tags)
        }
    }
    
    override init(frame: CGRect) {
        self.tags = []
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(scrollView)
        scrollView.contentSize = .zero
        scrollView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    private func updateViews(_ tags: [String]) {
        var currentX: CGFloat = 0
        tags.forEach { title in
            let atomicView = FSTagAtomicView(title: title)
            atomicView.frame = CGRect(x: currentX, y: 0, width: atomicView.width, height: 44)
            currentX += atomicView.width
            scrollView.addSubview(atomicView)
        }
        scrollView.contentSize = CGSize(width: currentX, height: 44)
    }
}
