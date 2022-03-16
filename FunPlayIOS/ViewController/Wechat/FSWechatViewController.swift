//
//  FSWechatViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/9.
//

import UIKit
class FSWechatViewController: CCBaseViewController {
    private let topView = FSWechatTagFilterView(frame: .zero)
    private let viewModel = FSWechatViewModel()
    
    override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.tagsLoadClosure = { [weak self] (tagList) in
            guard let self = self else { return }
            var strs: [String] = []
            tagList?.forEach({ model in
                strs.append(model.name)
            })
            self.topView.tags = strs
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.getTopTags()
    }
    
    private func setupViews() {
        self.view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.width.equalTo(CGFloat.screenWidth)
            make.height.equalTo(44)
            make.top.equalToSuperview().offset(100)
            make.left.equalToSuperview()
        }
    }
}
