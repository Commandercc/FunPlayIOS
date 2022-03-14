//
//  FSLoginViewModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/14.
//

import Foundation

class FSLoginViewModel {
    
    var loadClosure: ((String) -> Void)?
    
    init() {
        
    }
    
    func login(username: String, password: String) {
        let params = ["username": username, "password": password]
        FSMineService.login(params: params) { [weak self] (model, error) in
            guard let self = self else { return }
            if let error = error {
                CC.log("request", "失败 \(error)")
                self.loadClosure?(error)
            } else {
                if let model = model {
                    CC.log("request", "成功 \(model)")
                    CC.log(model.username)
                    CCLocal.saveValue(value: model.username, key: FSConfig.userKey)
                }
                self.loadClosure?("")
            }
        }
    }
}
