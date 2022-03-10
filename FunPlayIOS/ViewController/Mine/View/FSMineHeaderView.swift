//
//  FSMineHeaderView.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/10.
//

import UIKit

class FSMineHeaderView: UIView {
    private let imageView = UIImageView(frame: .zero).then {
        $0.image = UIImage(named: "icon_default_userprofile")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 32.0
    }
    let toLogin = UILabel(frame: .zero).then {
        $0.text = "立即登录"
        $0.font = .titleFont
        $0.textColor = .black
        $0.isHidden = true
    }
    let infoView = UIView(frame: .zero)
    private let name = UILabel(frame: .zero).then {
        $0.font = .titleFont
        $0.textColor = .white
    }
    private let score = UILabel(frame: .zero).then {
        $0.font = .textFont
        $0.textColor = .white
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.backgroundColor = UIColor.orange
        self.addSubview(imageView)
        self.addSubview(toLogin)
        self.addSubview(infoView)
        infoView.addSubview(name)
        infoView.addSubview(score)
        
        imageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-60)
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(64)
            make.height.equalTo(64)
        }
        toLogin.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(15)
            make.centerY.equalTo(imageView.snp.centerY)
            make.right.lessThanOrEqualToSuperview()
        }
        infoView.snp.makeConstraints { make in
            make.centerY.equalTo(imageView.snp.centerY)
            make.left.equalTo(imageView.snp.right).offset(15)
            make.right.lessThanOrEqualToSuperview()
            make.height.equalTo(64)
        }
        name.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(2)
            make.right.lessThanOrEqualToSuperview()
        }
        score.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-2)
        }
    }
    
    func updateValues(model: FSUserInfoModel) {
        self.name.text = model.username
        self.score.text = String(model.coinCount)
    }
}
