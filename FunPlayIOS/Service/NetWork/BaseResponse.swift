//
//  BaseResponse.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/10.
//

import Foundation
import HandyJSON

struct BaseResponse<T: Codable>: Codable {
    var errorCode : Int?    //服务返回码
    var errorMsg : String?
    var data : T?
}
