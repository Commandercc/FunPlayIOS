//
//  FSUserInfoModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/14.
//

import Foundation

struct FSUserInfoModel: Codable {
    var coinCount: Int = 0
    var rank: String = ""
    var userId: Int = 0
    var username: String = ""
    var image: String?
}
