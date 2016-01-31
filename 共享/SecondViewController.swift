//
//  SecondViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/17.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func loadTabBar(){
        self.tabBarItem.image = UIImage(named: "favorite")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "favoriteS")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.title = "favorite"
        self.view.backgroundColor = UIColor.whiteColor()
    }

}

