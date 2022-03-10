//
//  FSMineAPiService.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import Alamofire

class FSMineService {
    
    static func login(params:[String: Any], success: @escaping (FSUserInfoModel?) -> Void, error: @escaping (String?) -> Void) {
        FS.fetch(path: "/user/login", method: .post, params: params, success: success, error: error)
    }
}
