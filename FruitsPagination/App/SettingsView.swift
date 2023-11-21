//
//  SettingsView.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 21/11/23.
//

import SwiftUI

struct SettingsView: View {
    // Mark : properties
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    // MARK : Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK : SECTION 1
                    GroupBox(
                        label: HStack {
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        },
                        content: {
                            Divider().padding(.vertical, 4)
                            
                            HStack(spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80, alignment: .leading)
                                    .cornerRadius(8)
                                
                                Text("Most fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(
                                        .secondary
                                    )
                            }
                        }
                    )
                    
                    // MARK : SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "CUSTOMIZATION", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onoarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        )
                    })
                    
                    // MARK : SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        SettingsContentView(title: "Developer", description: "John / Jane")
                        SettingsContentView(title: "Designer", description: "Nilam Shah")
                        SettingsContentView(title: "Compatibility", description: "iOS 14")
                        SettingsContentView(title: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "https://www.google.com")
                        SettingsContentView(title: "Twitter", linkLabel: "@NilamShah", linkDestination: "https://www.twitter.com")
                        SettingsContentView(title: "SwiftUI", description: "2.0")
                        SettingsContentView(title: "Version", description: "1.1.0")
                    })
                } // : VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
