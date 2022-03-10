//
//  FS.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import Alamofire
import HandyJSON

let baseUrl = "https://www.wanandroid.com"

class FS {
    
    static func fetch<T>(path: String, method: HTTPMethod = .get, params: [String: Any]?, success: @escaping (_ result: T?) -> (), error: @escaping (_ error: String?) -> ()) {
        let desPath: String = baseUrl + path
        if let urlPath = URL(string: desPath) {
            let request = AF.request(urlPath, method: method, parameters: params, encoding: URLEncoding.default)
            request.responseJSON { response in
                guard let data = response.value else {
                    error(response.error?.errorDescription ?? "请求错误")
                    CCLog("请求失败 \(response.error?.errorDescription)")
                    return
                }
                let result = JSONDeserializer<BaseResponse<T>>.deserializeFrom(dict: data as? [String: Any])
                if result?.errorCode == 0 {
                    success(result?.data)
                    CCLog("请求成功")
                } else {
                    error(result?.errorMsg)
                    CCLog("请求失败")
                }
            }
        }
    }
}
