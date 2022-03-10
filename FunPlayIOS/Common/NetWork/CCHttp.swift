//
//  CCNetRequest.swift
//  thunder
//
//  Created by zhengxu on 2022/2/24.
//

import Foundation
import Alamofire
//import SwiftyJSON
//
//typealias completion = (_ vaule: JSON?, _ error: Error?) -> Void
//
//let baseUrl = "https://api.weibo.com"
//
//class CCHttp {
//
//    static func fetch(path: String, method: HTTPMethod = .get, params: [String: Any]?, completion: @escaping completion) {
//        let desPath: String = baseUrl + path
//        if let urlPath = URL(string: desPath) {
//            let request = AF.request(urlPath, method: method, parameters: params, encoding: URLEncoding.default)
//            request.responseJSON { response in
//                var jsonValue: JSON? = nil
//                var errorValue: Error?
//                switch response.result {
//                case .success(let value):
//                    jsonValue = JSON(value)
//                case .failure(let error):
//                    errorValue = error
//                }
//                completion(jsonValue, errorValue)
//            }
//        }
//    }
//}
