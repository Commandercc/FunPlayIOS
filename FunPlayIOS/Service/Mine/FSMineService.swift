//
//  FSMineAPiService.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import Alamofire

class FSMineService {
    
    static func login(params:[String: Any], finish: @escaping (_ result: FSLoginModel?, _ error: String?) -> Void) {
        FS.fetch(path: "/user/login", method: .post, params: params, finish: finish)
    }
    
    static func getUserInfo(finish: @escaping (_ result: FSUserInfoModel?, _ error: String?) -> Void) {
        FS.fetch(path: "/lg/coin/userinfo/json", method: .get, finish: finish)
    }
}
