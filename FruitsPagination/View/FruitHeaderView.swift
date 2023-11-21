//
//  FruitHeaderView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 21/11/23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColor, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: .black.opacity(0.15), radius: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
