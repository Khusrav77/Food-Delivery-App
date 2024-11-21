//
//  NutritionModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct Nutrition: Identifiable, Equatable, Codable {
    let id: Int
    let nutritionName: String
    let nutritionValue: String
      
  static func == (lhs: Nutrition, rhs: Nutrition) -> Bool {
          return lhs.id == rhs.id
      }
}
