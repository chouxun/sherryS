//
//  FirstViewController.swift
//  共享
//
//  Created by 仇寻 on 16/1/17.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

class FirstViewController: UINavigationController, UISearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        self.navigationBar.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 150)
        initNavBar()
    }
    
    func initNavBar(){
        let search = UISearchBar()
        search.searchBarStyle = UISearchBarStyle.Default
        search.placeholder = "试着搜索一下~"
        search.keyboardType = UIKeyboardType.Default
        search.translucent = true
        search.frame = CGRectMake(30, 60, UIScreen.mainScreen().bounds.width - 60, 30)
        self.navigationBar.addSubview(search)
    }
    
    func navBarChanged(){
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


