//
//  CCWebView.swift
//  thunder
//
//  Created by zhengxu on 2022/2/23.
//

import Foundation
import WebKit

class CCWebView: CCBaseViewController {
    
    var loadFinishClosure: ((String) -> Void)?
    var targetUrl: String = ""
    var webView: WKWebView
    
    init(url: String) {
        self.webView = WKWebView(frame: CGRect(x: 0, y: 0, width: .screenWidth, height: .screenHeight))
        super.init()
        self.targetUrl = url
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(webView)
        self.webView.navigationDelegate = self
        showWebPage()
    }
    
    private func showWebPage() {
        let url = URL(string: self.targetUrl)
        if let url = url {
            let urlRequest = URLRequest(url: url)
            self.webView.load(urlRequest)
        }
    }
    
}

extension CCWebView: WKNavigationDelegate {
    // 页面加载完成调用，会将当前页面的url回调出去，供外面使用
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let url = webView.url?.absoluteURL.absoluteString ?? ""
        if let blk = self.loadFinishClosure {
            blk(url)
        }
    }
}
