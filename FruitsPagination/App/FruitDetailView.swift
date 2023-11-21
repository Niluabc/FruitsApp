//
//  FruitDetailView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 21/11/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK : PROPERTIES
    var fruit: Fruit
    
    // MARK : BODY
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColor[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // Subheadline
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(fruit.gradientColor[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }// : Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // : Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .toolbar(.hidden)
            } // SCROLL
            .ignoresSafeArea(edges: .top)
        }// : Navigation view
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[1])
}
