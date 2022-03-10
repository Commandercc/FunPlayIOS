//
//  FSMineInfoViewModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import ReactiveSwift

class FSMineInfoViewModel {
    
    private(set) var userStateProperty: MutableProperty<Bool> = MutableProperty(false)
    
    init() {
        
    }
    
    func checkUserState() {
        if let model = CCLocal.fetchValue(key: FSConfig.userKey) {
            userStateProperty.value = true
        } else {
            userStateProperty.value = false
        }
    }
    
    func login() {
        let params = ["username": "1215ccc", "password": "zx1998731..."]
        FSMineService.login(params: params) { (model) in
            CCLog("request", "成功 \(model)")
        } error: { (error) in
            CCLog("request", "失败 \(error)")
        }

    }
}
