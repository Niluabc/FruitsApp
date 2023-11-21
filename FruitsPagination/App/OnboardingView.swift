//
//  OnboardingView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 20/11/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK : PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK : BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
