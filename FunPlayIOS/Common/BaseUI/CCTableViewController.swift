//
//  CCTableViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/14.
//

import Foundation
import UIKit

class CCTableViewController: CCBaseViewController {
    
    var tableView = UITableView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}


