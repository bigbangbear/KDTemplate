//
// Created by yuhuibin on 2017/5/18.
// Copyright (c) 2017 yuhuibin. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addChildViewController(childVC: FirstViewController(), imageName: "tabbar-me", title: "我");
        self.addChildViewController(childVC: FirstViewController(), imageName: "first", title: "ni");
    }

    private func addChildViewController(childVC: UIViewController, imageName: String, title: String) {
        // 1.创建自控制器
        let homeNav = UINavigationController(rootViewController: childVC)

        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)

        self.addChildViewController(homeNav)

    }

}
