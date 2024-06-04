//
//  NutritionModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct NutritionModel: Identifiable, Equatable {
    
    var id: Int
    var nutritionName: String
    var nutritionValue: String
    
    
    init(dictionary: NSDictionary) {
        self.id = dictionary.value(forKey: "nutrition_id") as? Int ?? 0
        self.nutritionName = dictionary.value(forKey: "nutrition_name") as? String ?? ""
        self.nutritionValue = dictionary.value(forKey: "nutrition_value") as? String ?? ""
    }
    
    static func == (lhs: NutritionModel, rhs: NutritionModel) -> Bool {
        return lhs.id == rhs.id
    }
}
