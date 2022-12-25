//
//  CoffeeScrollView.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 25/12/2022.
//

import SwiftUI

struct CoffeeScrollView: View {
    let coffees = [
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),
        Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5),

    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15){
                ForEach(coffees, id: \.self) { coffee in
                    CoffeView(coffee: coffee)
                }
            }
            .frame(height: 220)

        }
        .background(Color(uiColor: ColorManager.coreBackground ?? .white))

        
    }
}

struct CoffeeScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeScrollView()
    }
}
