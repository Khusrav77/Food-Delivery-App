//
//  NutritionModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct Nutrition: Identifiable, Equatable {
    
    var id: Int = 0
    var nutritionName: String = ""
    var nutritionValue: String = ""
      
      
      
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "nutrition_id") as? Int ?? 0
        self.nutritionName = dict.value(forKey: "nutrition_name") as? String ?? ""
        self.nutritionValue = dict.value(forKey: "nutrition_value") as? String ?? ""
         
      }
      
  static func == (lhs: Nutrition, rhs: Nutrition) -> Bool {
          return lhs.id == rhs.id
      }
}
