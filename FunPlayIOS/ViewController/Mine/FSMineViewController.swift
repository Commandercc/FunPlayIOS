//
//  FSMineViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/9.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa

class FSMineViewController: CCTableViewController {
    
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
        bindTableView()
        bindViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.viewModel.checkUserState()
    }
    
    private func setupViews() {
//        self.view.addSubview(headerView)
//
//        headerView.snp.makeConstraints { make in
//            make.top.equalToSuperview()
//            make.left.equalToSuperview()
//            make.right.equalToSuperview()
//            make.height.equalTo(CGFloat.screenHeight / 4)
//        }
        
        headerView.toLogin.reactive.pressed = CocoaAction(Action<(), (), Error> { [weak self] _ in
            let vc = FSLoginViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
            return .empty
        })
    }
    
    private func bindViewModel() {
        self.viewModel.userStateProperty.producer.startWithValues { [weak self] state in
            guard let self = self else { return }
            if !state {
                self.view.makeToast("请登录", position: .center)
                self.headerView.toLogin.isHidden = false
                self.headerView.infoView.isHidden = true
            } else {
                self.view.makeToast("获取信息", duration: 1.5, position: .center)
                self.headerView.toLogin.isHidden = true
                self.headerView.infoView.isHidden = false
                self.loadingView.startLoding()
                self.viewModel.getUserInfo()
            }
        }
        
        self.viewModel.userInfoProperty.producer.startWithValues { [weak self] model in
            guard let self = self, let model = model else { return }
            self.headerView.updateValues(model: model)
            self.viewModel.generateSettingData()
        }
    }
    
    private func bindTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableHeaderView = self.headerView
        self.headerView.height = .screenHeight / 4
        
        self.viewModel.loadClosure = { [weak self] in
            guard let self = self else { return }
            self.loadingView.stopLoading()
            self.tableView.reloadData()
        }
    }
    
}

extension FSMineViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item: CCTableViewItem = self.viewModel.cellItems[indexPath.row]
        return item.cellHeight
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.cellItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.viewModel.cellItems[indexPath.row]
        var cell = tableView.dequeueReusableCell(withIdentifier: item.cellClassName) as? CCTableViewCell
        if cell == nil {
            cell = CCObjectGenerateFromClassString.createObjectGenerate(fromClassString: item.cellClassName) as? CCTableViewCell
        }
        cell?.item = item
        return cell ?? CCTableViewCell()
    }
    
    
}
