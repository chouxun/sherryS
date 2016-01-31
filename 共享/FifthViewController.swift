//
//  FifthViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/23.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadTabBar(){
        self.tabBarItem.image = UIImage(named: "issue")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "issueS")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.title = "release"
        self.view.backgroundColor = UIColor.whiteColor()
    }
}
