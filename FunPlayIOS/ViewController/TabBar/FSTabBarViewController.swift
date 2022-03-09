//
//  FSTabBarViewController.swift
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/9.
//

import UIKit

class FSTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTab()
        UITabBar.appearance().tintColor = UIColor.xEB0029.alpha(0.6)
    }
    
    private func initTab() {
        let home = FSHomeViewController()
        let project = FSProjectViewController()
        let wechat = FSWechatViewController()
        let structure = FSStructureViewController()
        let mine = FSMineViewController()
        
        home.tabBarItem = UITabBarItem(title: "主页", image: UIImage(named: "icon_tabbar_home"), selectedImage: UIImage(named: "icon_tabbar_home_pressed"))
        project.tabBarItem = UITabBarItem(title: "项目", image: UIImage(named: "icon_tabbar_project"), selectedImage: UIImage(named: "icon_tabbar_project_pressed"))
        wechat.tabBarItem = UITabBarItem(title: "公众号", image: UIImage(named: "icon_tabbar_wechat"), selectedImage: UIImage(named: "icon_tabbar_wechat_pressed"))
        structure.tabBarItem = UITabBarItem(title: "体系", image: UIImage(named: "icon_tabbar_structure"), selectedImage: UIImage(named: "icon_tabbar_structure_pressed"))
        mine.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "icon_tabbar_mine"), selectedImage: UIImage(named: "icon_tabbar_mine_pressed"))
        
        self.viewControllers = [home, project, wechat, structure, mine]
    }
}
