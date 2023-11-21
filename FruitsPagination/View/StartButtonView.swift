//
//  StartButtonView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 20/11/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        // MARK: BODY
        VStack {
            Button(action: {
                print("Exit the onboarding")
                isOnboarding = false
            }, label: {
                HStack(spacing: 8) {
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                    Text("Start")
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                )
            }) // BUTTON
            .accentColor(.white)
        }
        
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
