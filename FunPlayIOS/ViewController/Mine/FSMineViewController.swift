//
//  FSMineViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/9.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa

class FSMineViewController: CCBaseViewController {
    
    private let headerView = FSMineHeaderView(frame: .zero)
    
    private let viewModel = FSMineInfoViewModel()
    
    override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        bindViewModel()
    }
    
    private func setupViews() {
        self.view.addSubview(headerView)
        
        headerView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(CGFloat.screenHeight / 4)
        }
        
        let button = UIButton(frame: CGRect(x: 0, y: 300, width: 200, height: 50))
        self.view.addSubview(button)
        button.setTitle("测试请求", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.reactive.pressed = CocoaAction(Action<(), (), Error> { [weak self] _ in
            self?.viewModel.login()
            return .empty
        })
        
    }
    
    private func bindViewModel() {
        self.viewModel.userStateProperty.producer.startWithValues { [weak self] state in
            guard let self = self else { return }
            if !state {
                self.view.makeToast("请登录")
                self.headerView.toLogin.isHidden = false
                self.headerView.infoView.isHidden = true
            }
        }
        
        
    }
    
}
