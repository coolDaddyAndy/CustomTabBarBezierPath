//
//  CustomTabBarController.swift
//  CustomTabBarBezierPath
//
//  Created by Andrei Sushkou on 5.10.23.
//

import UIKit

final class CustomTabBarController: UITabBarController {
    
    
    private let customTabBar = CustomtTabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(customTabBar, forKey: "tabBar")
        setupTabItems()
    }
    
    private func setupTabItems() {
        
        let firstVC = ViewController()
        firstVC.tabBarItem.title = "Like"
        firstVC.tabBarItem.image = UIImage(systemName: "heart.fill")
        
        let secondVC = SecondViewController()
        secondVC.tabBarItem.title = "Subscribe"
        secondVC.tabBarItem.image = UIImage(systemName: "pencil.tip.crop.circle.badge.plus.fill")
        
        setViewControllers([firstVC, secondVC], animated: true)
    }
}
