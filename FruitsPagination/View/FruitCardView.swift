//
//  FruitCardView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 20/11/23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK : PROPERTIES
    @State private var isAnimatingView: Bool = false
    var fruit: Fruit
    
    var body: some View {
        // MARK : BODY
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimatingView ? 1 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundStyle(
                        .white
                    )
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .font(.title2)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    
                // BUTTON: START
                StartButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimatingView = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
