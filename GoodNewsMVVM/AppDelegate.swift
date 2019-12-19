//
//  AppDelegate.swift
//  GoodNewsMVVM
//
//  Created by APPLE on 2019/12/19.
//  Copyright © 2019 JeongminKim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 처음 보이는 네비게이션 바의 컬러를 바꾼다 -> 시스템옐로로 바꾸겠다
        UINavigationBar.appearance().backgroundColor = UIColor.systemYellow
        // 스크롤 내렸을 때 네비게이션 바의 컬러를 바꾼다 -> 청록색으로 바꾸겠다
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 52/255, green: 235/255, blue: 235/255, alpha: 1.0)
        // 처음 보이는 네비게이션 바 제목의 색을 바꾼다 -> 파란으로 바꾸겠다
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.blue]
        // 스크롤 내려서 글씨 작아졌을 때의 색을 바꾼다 -> 흰색으로 바꾸겠다
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

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

