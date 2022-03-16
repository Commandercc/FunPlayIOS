//
//  FSWechatService.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/17.
//

import Foundation


class FSWechatService {
    // 获取顶部公众号列表
    static func getTopTags(finish: @escaping (_ result: [FSWechatTagModel]?, _ error: String?) -> Void) {
        FS.fetch(path: "/wxarticle/chapters/json", method: .get, finish: finish)
    }
}
