//
//  AppDelegate.swift
//  DigiTech
//
//  Created by STC on 01/06/23.
//

import UIKit
import FirebaseCore
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       FirebaseApp.configure()
        // Override point for customization after application launch.
        self.splashsreen()
        return true
    }
    
    private func splashsreen(){
        let lauchScreen = UIStoryboard.init(name: "LaunchScreen", bundle: nil)
        let rootVc = lauchScreen.instantiateViewController(withIdentifier: "splashController")
        self.window?.rootViewController = rootVc
        self.window?.makeKeyAndVisible()
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(dissmmissSpashController), userInfo: nil, repeats: false)
    }
    @objc func dissmmissSpashController(){
        let mainVc = UIStoryboard.init(name: "Main", bundle: nil)
        let root = mainVc.instantiateViewController(withIdentifier: "phoneViewController")
        self.window?.rootViewController = root
        self.window?.makeKeyAndVisible()
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

