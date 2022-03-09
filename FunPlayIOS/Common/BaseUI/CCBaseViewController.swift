//
//  CCBaseViewController.swift
//  CCBaseUIKit
//
//  Created by zhengxu on 2022/2/20.
//

import Foundation
import UIKit

public class CCBaseViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}
