//
//  MainViewController.swift
//  DYZB
//
//  Created by 佳冬  on 2016/12/9.
//  Copyright © 2016年 JD. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChileVc(storyName: "Home")
        addChileVc(storyName: "Live")
        addChileVc(storyName: "Flow")
        addChileVc(storyName: "Profile")
    }
}
extension MainViewController{
    fileprivate func addChileVc(storyName: String){
        //通过storyboard获取控制器
        let  childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        //将childVc添加到主控制器中
        addChildViewController(childVc)
    }
}
