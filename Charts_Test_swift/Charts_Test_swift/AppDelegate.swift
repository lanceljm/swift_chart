//
//  AppDelegate.swift
//  Charts_Test_swift
//
//  Created by ljm on 2017/7/14.
//  Copyright © 2017年 ljm. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: screenBounds)
        
        /* 第一个界面--折线图 */
        let firstvc         =   ViewController()
        firstvc.title       =   "折线图";
        let firstNvc        =   UINavigationController(rootViewController: firstvc)
        firstNvc.tabBarItem.image           =   UIImage(named:"")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        firstNvc.tabBarItem.selectedImage   =   UIImage(named: "")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        
        /* 第二个界面--柱状图 */
        let secondvc        =   SecondViewController()
        secondvc.title      =   "柱状图"
        let secondNvc       =   UINavigationController(rootViewController: secondvc)
        secondNvc.tabBarItem.image          =   UIImage(named: "")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        secondNvc.tabBarItem.selectedImage  =   UIImage(named: "")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        
        
        /* 第三个界面--扇形图 */
        let thirdvc         =   ThirdViewController()
        thirdvc.title       =   "扇形图"
        let thirdNvc        =   UINavigationController(rootViewController: thirdvc)
        thirdNvc.tabBarItem.image           =   UIImage(named:"")?.withRenderingMode    (UIImageRenderingMode.alwaysOriginal)
        thirdNvc.tabBarItem.selectedImage   =   UIImage(named: "")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        
        /* 第四个界面--点状图 */
        let fourvc          =   FourthViewController()
        fourvc.title        =   "点状图"
        let fourNvc         =   UINavigationController(rootViewController: fourvc)
        fourNvc.tabBarItem.image            =   UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        fourNvc.tabBarItem.selectedImage    =   UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        
        
        /* 第五个界面--雷达图 */
        let fivevc          =   FivethViewController()
        fivevc.title        =   "雷达图"
        let fiveNvc         =   UINavigationController(rootViewController: fivevc)
        fiveNvc.tabBarItem.image            =   UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        fiveNvc.tabBarItem.selectedImage    =   UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        
        
        
        let tab = UITabBarController()
        
        tab.addChildViewController(firstNvc)
        tab.addChildViewController(secondNvc)
        tab.addChildViewController(thirdNvc)
        tab.addChildViewController(fourNvc)
        tab.addChildViewController(fiveNvc)
        
        window?.rootViewController = tab
        
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

