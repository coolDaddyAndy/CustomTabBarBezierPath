//
//  SceneDelegate.swift
//  CustomTabBarBezierPath
//
//  Created by Andrei Sushkou on 5.10.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let rootViewController = CustomTabBarController()
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}

