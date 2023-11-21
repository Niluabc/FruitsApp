//
//  SettingsContentView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 21/11/23.
//

import SwiftUI

struct SettingsContentView: View {
    var title: String
    var description: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 8)
            
            HStack {
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(
                        .secondary
                    )
                Spacer()
                
                
                if description != nil {
                    Text(description!)
                        .font(.subheadline)
                        .fontWeight(.bold)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                        .fontWeight(.bold)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsContentView(title: "Developer", description: "John / Jane")
}
