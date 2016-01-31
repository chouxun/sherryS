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
//        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(2.0, 100)
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
        self.viewControllers = [first,second,third,fourth,fifth]

        first.tabBarItem = loadTabBar(UIImage(named: "location")!, TabBarImageSelected: UIImage(named: "locationS")!, Title: "location")
//        second.loadTabBar()
//        third.loadTabBar()
//        fourth.loadTabBar()
//        fifth.loadTabBar()
        self.selectedIndex = 4
    }
    
    func loadTabBar(TabBarImage:UIImage, TabBarImageSelected:UIImage, Title:NSString)->UITabBarItem{
        let tabBarI = UITabBarItem()
        tabBarI.title = Title as String
        tabBarI.image = TabBarImage.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        tabBarI.selectedImage = TabBarImageSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        return tabBarI
    }
    
}
