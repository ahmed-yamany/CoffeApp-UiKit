//
//  CoreTabBarController.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit

class CoreTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem = UITabBarItem(title: nil, image: AssetsManager.icons.home, selectedImage: AssetsManager.icons.filledHome)

        let lovedVC = UINavigationController(rootViewController: LovedViewController())
        lovedVC.tabBarItem = UITabBarItem(title: nil, image: AssetsManager.icons.heart, selectedImage: AssetsManager.icons.filledHeart)
        
        let cartVC = UINavigationController(rootViewController: CartViewController())
        cartVC.tabBarItem = UITabBarItem(title: nil, image: AssetsManager.icons.bag, selectedImage: AssetsManager.icons.filledBag)
        
        let notificationVC = UINavigationController(rootViewController: NotificationViewController())
        notificationVC.tabBarItem = UITabBarItem(title: nil, image: AssetsManager.icons.notification, selectedImage: AssetsManager.icons.filledNotification)
        
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        profileVC.tabBarItem = UITabBarItem(title: nil, image: AssetsManager.icons.profile, selectedImage: AssetsManager.icons.filledProfile)
        
        tabBar.backgroundColor = ColorManager.label
        tabBar.layer.cornerRadius = 10
        tabBar.tintColor = ColorManager.coffee
        
        viewControllers = [homeVC, lovedVC, cartVC, notificationVC, profileVC]
        
        

    }
    


}
