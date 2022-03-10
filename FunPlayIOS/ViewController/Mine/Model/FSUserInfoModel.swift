//
//  FSUserInfoModel.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/10.
//

import Foundation
import HandyJSON

struct FSUserInfoModel: HandyJSON {
    var username: String = ""
    var nickname: String = ""
    var id: Int = 0
    var coinCount: Int = 0 //积分
}
