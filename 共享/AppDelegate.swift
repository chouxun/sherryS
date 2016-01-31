//
//  AppDelegate.swift
//  共享
//
//  Created by 仇寻 on 16/1/17.
//  Copyright © 2016年 st. All rights reserved.
//

import UIKit

let APIKey = "491c1bd11c51b43e576e539e9fa942dd"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var root = mainViewController()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        MAMapServices.sharedServices().apiKey = APIKey
//        AMapSearchServices.sharedServices().apiKey = APIKey
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.makeKeyAndVisible()
        
        self.window?.rootViewController = root
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        
    }

    func applicationDidEnterBackground(application: UIApplication) {
       
    }

    func applicationWillEnterForeground(application: UIApplication) {
       
    }

    func applicationDidBecomeActive(application: UIApplication) {
        
    }

    func applicationWillTerminate(application: UIApplication) {
        
    }


}

