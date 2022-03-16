//
//  FSLoginViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/13.
//

import Foundation
import UIKit
import ReactiveCocoa
import ReactiveSwift

class FSLoginViewController: CCBaseViewController {
    private let viewModel = FSLoginViewModel()
    
    private let appLabel = UILabel(frame: .zero).then {
        $0.text = "FunPlayIOS"
        $0.textColor = .black
        $0.font = .titleFont
    }
    
    private let username = UITextField(frame: .zero).then {
        $0.placeholder = "请输入用户名"
        $0.borderStyle = .roundedRect
        $0.clearButtonMode = .always
        $0.leftViewMode = .always
        $0.leftView = UIImageView(image: UIImage(named: "icon_username"))
    }
    private let password = UITextField(frame: .zero).then {
        $0.placeholder = "请输入密码"
        $0.borderStyle = .roundedRect
        $0.isSecureTextEntry = true
        $0.clearButtonMode = .always
        $0.leftViewMode = .always
        $0.leftView = UIImageView(image: UIImage(named: "icon_password"))
    }
    private let loginBtn = UIButton(frame: .zero).then {
        $0.setTitle("登录", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.titleLabel?.font = .titleFont
        $0.backgroundColor = UIColor.systemPink
        $0.layer.cornerRadius = 5.0
        $0.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        bindViewModel()
    }
    
    private func setupViews() {
        self.view.addSubview(appLabel)
        self.view.addSubview(username)
        self.view.addSubview(password)
        self.view.addSubview(loginBtn)
        appLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(CGFloat.screenHeight / 3)
            make.centerX.equalToSuperview()
        }
        username.snp.makeConstraints { make in
            make.top.equalTo(appLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        password.snp.makeConstraints { make in
            make.top.equalTo(username.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        loginBtn.snp.makeConstraints { make in
            make.top.equalTo(password.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(CGFloat.screenWidth / 3 * 2)
        }
        
        loginBtn.reactive.pressed = CocoaAction(Action<(), (), Error> { [weak self] in
            guard let self = self else { return .empty }
            self.loadingView.startLoding()
            self.viewModel.login(username: self.username.text ?? "", password: self.password.text ?? "")
            return .empty
        })
    }
    
    private func bindViewModel() {
        self.viewModel.loadClosure = { [weak self] str in
            guard let self = self else { return }
            self.loadingView.stopLoading()
            if !str.isEmpty {
                self.view.makeToast("error: " + str, position: .center)
            } else {
                self.view.makeToast("登录成功")
                //self.dismiss(animated: true, completion: nil)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}
