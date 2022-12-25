//
//  Cell.swift
//  CoffeAppUIKit
//
//  Created by Ahmed Yamany on 25/12/2022.
//

import SwiftUI

struct CoffeView: View {
    let coffee: Coffee
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(coffee.image)
                            .resizable()
                            .cornerRadius(25)
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(uiColor: ColorManager.coffee ?? .white))

                            Text(coffee.rating.formatted())
                                .foregroundColor(.white)
                        }
                        .frame(width: 73, height: 26)
                        .font(.subheadline)
                        
                       .background(
                           RoundedCornersShape(corners: [.bottomLeft, .topRight], radius: 25)
                            .fill(.ultraThinMaterial)
                       )

                        
                    }
                    .frame(width: 140, height: 123)
                    
                    VStack(alignment: .leading, spacing: 10){
                        VStack(alignment: .leading){
                            Text(coffee.name)
                                .foregroundColor(Color(uiColor: ColorManager.text ?? .label))
                                .font(.headline)
                            Text(coffee.description)
                                .foregroundColor(Color(uiColor: ColorManager.description ?? .label))
                                .font(.caption)
                                
                            
                        }
                        Text("\(Text("$").foregroundColor(Color(uiColor: ColorManager.coffee ?? .red))) \(coffee.price.formatted())")
                            .foregroundColor(Color(uiColor: ColorManager.text ?? .label))
                            .fontWeight(.bold)

                    }
                }
                .padding(10)
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
                .frame(width: 52, height: 53)
                
               .background(
                   RoundedCornersShape(corners: [.topLeft, .bottomRight], radius: 25)
                    .fill(Color(uiColor: ColorManager.coffee ?? .white))
               )

            }
            .background(Color(uiColor: ColorManager.label ?? .blue))
            .cornerRadius(25)

        }
        .frame(width: 160, height: 220)
        .background(Color(uiColor: ColorManager.coreBackground ?? .white))

    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        CoffeView(coffee: Coffee(image: "mug", name: "Espresso", description: "without Milk", price: 4.20, rating: 4.5))
    }
}



struct RoundedCornersShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect,
                               byRoundingCorners: corners,
                               cornerRadii: CGSize(width: radius, height: radius))
       return Path(path.cgPath)
   }
}
