//
//  LCTabbarViewController.swift
//  douyuTV
//
//  Created by lichao on 16/9/27.
//  Copyright © 2016年 lichao. All rights reserved.
//

import UIKit

class LCTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //添加所有的子控制器
        addAllChildVc()
        
        // Do any additional setup after loading the view.
    }

    //MARK:初始化所有子控制器
    func addAllChildVc() {
        
        addOneChildVc(childVc: HomeViewController(), title: "首页", imageName: "btn_home_normal", selectImageName: "btn_home_selected")
        addOneChildVc(childVc: LiveViewController(), title: "直播", imageName: "btn_live_normal", selectImageName: "btn_live_selected")
        addOneChildVc(childVc: FollowViewController(), title: "关注", imageName: "btn_follow_normal", selectImageName: "btn_follow_selected")
        addOneChildVc(childVc: MineViewController(), title: "我的", imageName: "btn_user_normal", selectImageName: "btn_user_selected")
    }
    
    
    //MARK:初始化一个子控制器
    func addOneChildVc(childVc: UIViewController, title: String, imageName: String, selectImageName: String) {
        
        childVc.title = title
        childVc.tabBarItem.title = title
        if !imageName.isEmpty {
            childVc.tabBarItem.image = UIImage(named: imageName)
        }
        if !selectImageName.isEmpty {
            childVc.tabBarItem.selectedImage = UIImage(named: selectImageName)
        }
        
        //导航控制器
        let nav = UINavigationController(rootViewController: childVc)
        addChildViewController(nav)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
