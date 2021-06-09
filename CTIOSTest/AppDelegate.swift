//
//  AppDelegate.swift
//  CTIOSTest
//
//  Created by Ankush Sharma on 09/06/21.
//  Copyright © 2021 Ankush Sharma. All rights reserved.
//

import UIKit
import CleverTapSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        CleverTap.autoIntegrate();
     
        
        let profile: Dictionary<String, Any> = [
            //Update pre-defined profile properties
            "Name": "Jack Test Krana",
            "Email": "jackyboy.Tester@gmail.com",
            //Update custom profile properties
            "Plan type": "Superman",
            "Favorite Food": "Rice"
        ]

        CleverTap.sharedInstance()?.onUserLogin(profile)
        
            CleverTap.setDebugLevel(CleverTapLogLevel.debug.rawValue)
       
        
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

