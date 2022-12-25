//
//  AssetsManager.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit

struct AssetsManager{
    static let cupOfCoffee = UIImage(named: "cupOfCoffee")
    static let icons = Icons.self
    static let avatar = UIImage(named: "Avatar")?.withRenderingMode(.alwaysOriginal)
    static let HomeSearchButton = UIImage(named: "HomeSearchButton")
       
}

struct Icons{
    static let home = UIImage(named: "Home")
    static let filledHome = UIImage(named: "filledHome")

    static let heart = UIImage(named: "Heart")
    static let filledHeart = UIImage(named: "filledHeart")

    static let bag = UIImage(named: "Bag")
    static let filledBag = UIImage(named: "filledBag")
    
    static let notification = UIImage(named: "Notification")
    static let filledNotification = UIImage(named: "filledNotification")

    static let profile = UIImage(named: "Profile")
    static let filledProfile = UIImage(named: "filledProfile")
    
    static let category = UIImage(named: "Category")
    static let search = UIImage(named: "Search")

}


