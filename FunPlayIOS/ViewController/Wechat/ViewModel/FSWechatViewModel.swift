//
//  FSWechatViewModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/17.
//

import Foundation

class FSWechatViewModel {
    
    var tagsLoadClosure: (([FSWechatTagModel]?) -> Void)?
    
    init() {}
    
    func getTopTags() {
        FSWechatService.getTopTags { [weak self] (tagList, error) in
            guard let self = self else { return }
            if let error = error {
                CC.log("request", "失败 \(error)")
                self.tagsLoadClosure?(nil)
            } else {
                if let tagList = tagList {
                    self.tagsLoadClosure?(tagList)
                }
            }
        }
    }
}
