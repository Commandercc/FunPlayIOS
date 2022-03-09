//
//  UIImageView+Addition.swift
//  thunder
//
//  Created by zhengxu on 2022/2/25.
//

import Foundation
import UIKit
import SDWebImage

typealias ImageDownloadCallBack = (UIImage?, Error?, URL?) -> Void

extension UIImageView {
    func setImage(url: String?, imgSize: CGSize? = nil, placeholder: UIImage? = nil, failImage: UIImage? = UIImage(named: "icon_image_failed"), finish: ImageDownloadCallBack? = nil) {
        guard let url = url, !url.isEmpty else {
            return
        }
        if let resultUrl = URL(string: url) {
            let options: SDWebImageOptions = [.retryFailed, .highPriority]
            sd_setImage(with: resultUrl, placeholderImage: placeholder, options: options) { [weak self] (img, error, cacheType, imgUrl) in
                if error == nil {
                    self?.image = img ?? UIImage(named: "icon_image_failed")
                } else {
                    self?.image = nil
                }
                finish?(img, error, resultUrl)
            }
        }
    }
}
