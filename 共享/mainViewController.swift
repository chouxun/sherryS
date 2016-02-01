//
//  mainViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/23.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class mainViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loadAllViewController()
        self.tabBar.backgroundColor = UIColor.grayColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadAllViewController(){
    
        let first = FirstViewController()
        let second = SecondViewController()
        let third = ThirdViewController()
        let fourth = FourthViewController()
        let fifth = FifthViewController()
        
        self.loadAllChildVc(first, tabImage: "location", tabBarImaSelected: "locationS", title: "location")
        self.loadAllChildVc(second, tabImage: "favorite", tabBarImaSelected: "favoriteS", title: "favorite")
        self.loadAllChildVc(third, tabImage: "notice", tabBarImaSelected: "noticeS", title: "notice")
        self.loadAllChildVc(fourth, tabImage: "symbol", tabBarImaSelected: "symbolS", title: "symbol")
        self.loadAllChildVc(fifth, tabImage: "issue", tabBarImaSelected: "issueS", title: "issue")
        
        self.selectedIndex = 0
    }
    
    func loadAllChildVc(childVc:UINavigationController, tabImage:String, tabBarImaSelected:String,title:String)->Void {
        childVc.tabBarItem.image = UIImage(named: tabImage)!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        childVc.tabBarItem.selectedImage = UIImage(named: tabBarImaSelected)!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        childVc.tabBarItem.title = title
        self.addChildViewController(childVc)
    }
    
}
