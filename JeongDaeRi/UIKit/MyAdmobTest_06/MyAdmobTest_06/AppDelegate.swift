//
//  AppDelegate.swift
//  MyAdmobTest_06
//
//  Created by 이성현 on 2023/09/29.
//

import UIKit
import GoogleMobileAds

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    // 앱이 런칭 되었을때 여기로 오게 된다.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 이 코드를 통해 googlemobileads를 사용할 수 있게 된다.
        GADMobileAds.sharedInstance().start(completionHandler: nil)

        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

