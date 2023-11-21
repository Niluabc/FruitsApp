//
//  FruitRowView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 21/11/23.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: PROPERTIES
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        HStack {
            Image(fruit.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(colors: fruit.gradientColor, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundStyle(
                        .secondary
                    )
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
