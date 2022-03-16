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
        
        headerView.toLogin.reactive.pressed = CocoaAction(Action<(), (), Error> { [weak self] _ in
            let vc = FSLoginViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
            return .empty
        })
    }
    
    private func bindViewModel() {
        self.viewModel.checkUserStateClosure = { [weak self] state in
            guard let self = self else { return }
            if state {
                self.headerView.toLogin.isHidden = true
                self.headerView.infoView.isHidden = false
                self.loadingView.startLoding()
                self.viewModel.getUserInfo()
            } else {
                self.headerView.toLogin.isHidden = false
                self.headerView.infoView.isHidden = true
                //self.view.makeToast("立即登录", position: .center)
                self.tableView.reloadData()
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
        self.tableView.separatorStyle = .none
        let header = UIView(frame: CGRect(x: 0, y: 0, width: .screenWidth, height: .screenHeight / 8))
        header.addSubview(headerView)
        headerView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.width.equalTo(CGFloat.screenWidth)
        }
        self.tableView.tableHeaderView = header
        // 直接把headerview 作为tableHeaderView 有约束问题 https://blog.csdn.net/csdn2314/article/details/102551597   https://lengmolehongyan.github.io/blog/2016/03/26/tableview-layoutconstraints-conflict/
        
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
        cell?.selectionStyle = .none
        return cell ?? CCTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let item = self.viewModel.cellItems[indexPath.row] as? FSMineSettingItem {
            if item.model?.title == "退出登录" {
                CCLocal.removeValue(key: FSConfig.userKey)
                self.viewModel.checkUserState()
            }
        }
        
    }
    
}
