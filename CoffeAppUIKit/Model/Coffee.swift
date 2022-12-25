//
//  Coffee.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 25/12/2022.
//

import Foundation


struct Coffee: Identifiable, Hashable{
    let id = UUID()
    let image: String
    let name: String
    let description: String
    let price: Float
    let rating: Float
}
