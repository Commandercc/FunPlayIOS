//
//  FSMineInfoViewModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import ReactiveSwift

class FSMineInfoViewModel {
    
    var loadClosure: (() -> Void)?
    
    private(set) var userStateProperty: MutableProperty<Bool> = MutableProperty(false)
    private(set) var userInfoProperty: MutableProperty<FSUserInfoModel?> = MutableProperty(nil)
    private(set) var cellItems: [CCTableViewItem] = []
    
    
    init() {
        
    }
    
    func checkUserState() {
        if let _ = CCLocal.fetchValue(key: FSConfig.userKey) {
            userStateProperty.value = true
        } else {
            userStateProperty.value = false
        }
    }
    
    func getUserInfo() {
        FSMineService.getUserInfo { [weak self] (model, error) in
            guard let self = self else { return }
            if let error = error {
                CC.log("request", "失败 \(error)")
                self.userInfoProperty.value = nil
            } else {
                if let model = model {
                    CC.log("request", "成功 \(model)")
                    self.userInfoProperty.value = model
                } else {
                    self.userInfoProperty.value = nil
                }
            }
        }
    }
    
    func generateSettingData() {
        self.cellItems.removeAll()
        let titles: [String] = ["我的收藏", "我的积分", "排行榜"]
        titles.forEach { str in
            var model = FSMineSettingModel()
            model.title = str
            let settingItem = FSMineSettingItem()
            settingItem.model = model
            self.cellItems.append(settingItem)
            self.loadClosure?()
        }
    }
    
}
