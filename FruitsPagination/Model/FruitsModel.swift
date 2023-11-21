//
//  FruitsModel.swift
//  FruitsPagination
//
//  Created by Nilam Shah on 20/11/23.
//

import SwiftUI

// MARK : FRUITS Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var description: String
    var imageName: String
    var gradientColor: [Color]
    var nutrition: [String]
}
