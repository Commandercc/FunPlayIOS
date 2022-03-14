//
//  FS.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/11.
//

import Foundation
import Alamofire

let baseUrl = "https://www.wanandroid.com"

typealias finish<T> = (_ result: T?, _ error: String?) -> Void

class FS {
    
    static func fetch<T: Codable>(path: String, method: HTTPMethod = .get, params: [String: Any]?, finish: @escaping finish<T>) {
        let desPath: String = baseUrl + path
        if let urlPath = URL(string: desPath) {
            let request = AF.request(urlPath, method: method, parameters: params, encoding: URLEncoding.default)
            request.responseDecodable(of: BaseResponse<T>.self) { res in
                switch res.result {
                case .success(let base):
                    CC.log("success", base)
                    if base.errorCode == 0 {
                        finish(base.data, nil)
                    } else {
                        finish(nil, base.errorMsg)
                    }
                case .failure(let error):
                    CC.log("error", error.errorDescription ?? "")
                    finish(nil, error.errorDescription)
                }
            }
        }
    }
    
    static func fetch<T: Codable>(path: String, method: HTTPMethod = .get, finish: @escaping finish<T>) {
        let desPath: String = baseUrl + path
        if let urlPath = URL(string: desPath) {
            let request = AF.request(urlPath, method: method, encoding: URLEncoding.default)
            request.responseDecodable(of: BaseResponse<T>.self) { res in
                switch res.result {
                case .success(let base):
                    CC.log("success", base)
                    if base.errorCode == 0 {
                        finish(base.data, nil)
                    } else {
                        finish(nil, base.errorMsg)
                    }
                case .failure(let error):
                    CC.log("error", error.errorDescription ?? "")
                    finish(nil, error.errorDescription)
                }
            }
        }
    }
}
