//
//  FruitsPaginationApp.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 20/11/23.
//

import SwiftUI

@main
struct FruitsPaginationApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding == true {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
