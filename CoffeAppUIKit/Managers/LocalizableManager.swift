//
//  LocalizableManager.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 22/12/2022.
//

import UIKit

struct LocalizableManager{
    static let shared = LocalizableManager()
    
    let stayFocused = NSLocalizedString("stayFocused", comment: "Stay Focused")
    let welcomeDesc = NSLocalizedString("welcomeDesc", comment: "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino")
    let diveIn = NSLocalizedString("diveIn", comment: "Dive In")
}
