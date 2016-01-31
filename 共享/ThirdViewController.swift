//
//  ThirdViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/23.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadTabBar(){
        self.tabBarItem.image = UIImage(named: "notice")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "noticeS")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.title = "notice"
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
}