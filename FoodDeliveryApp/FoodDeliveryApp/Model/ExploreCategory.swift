//
//  ExploreCategoryModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation
import SwiftUI


struct ExploreCategory: Identifiable, Equatable {
    var id: Int
    var name: String
    var image: String
    var color: Color = Color.cardsColor
    
    static func == (lhs: ExploreCategory, rhs: ExploreCategory) -> Bool {
        return lhs.id == rhs.id
    }
}
