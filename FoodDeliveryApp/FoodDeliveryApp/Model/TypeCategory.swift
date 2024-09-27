//
//  ExploreCategoryModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation
import SwiftUI


struct TypeCategory: Identifiable, Equatable {
    var id: Int
    var name: String
    var image: String
    var color: Color?
    
    static func == (lhs: TypeCategory, rhs: TypeCategory) -> Bool {
        return lhs.id == rhs.id
    }
}
