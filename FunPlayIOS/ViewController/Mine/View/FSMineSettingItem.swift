//
//  FSMineSettingItem.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/14.
//

import Foundation
import UIKit

class FSMineSettingItem: CCTableViewItem {
    var model: FSMineSettingModel?
    
    override init() {
        super.init()
        self.cellHeight = 50
    }
}

class FSMineSettingCell: CCTableViewCell {
    
    private let titleLabel = UILabel(frame: .zero).then {
        $0.textColor = .black
        $0.font = .titleFont
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var item: CCTableViewItem? {
        didSet {
            if let item = item as? FSMineSettingItem, let model = item.model {
                self.titleLabel.text = model.title
            }
        }
    }
    
    private func setupViews() {
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalToSuperview()
        }
    }
}
