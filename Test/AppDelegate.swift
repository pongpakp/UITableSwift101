//
//  AppDelegate.swift
//  Test
//
//  Created by Chong on 17/1/2568 BE.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ListImageViewController() // ตัว ViewController ของคุณ
        let navigationController = UINavigationController(rootViewController: viewController) // ฝัง ViewController ไว้ใน UINavigationController
        
        window?.rootViewController = navigationController // ตั้งค่าให้ UINavigationController เป็น root
        window?.makeKeyAndVisible()
        
        return true
    }

}
