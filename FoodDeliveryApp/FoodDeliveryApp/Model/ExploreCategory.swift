//
//  ExploreCategoryModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation
import SwiftUI


struct ExploreCategory: Identifiable, Equatable {
    var id: Int = 0
    var name: String = ""
    var image: String = ""
    var color: Color = Color.cardsColor
      
      
      init(dict: NSDictionary) {
          self.id = dict.value(forKey: "cat_id") as? Int ?? 0
          self.name = dict.value(forKey: "cat_name") as? String ?? ""
          self.image = dict.value(forKey: "image") as? String ?? ""
          self.color = Color(hex: dict.value(forKey: "color") as? String ?? "000000")
         
      }
    
    static func == (lhs: ExploreCategory, rhs: ExploreCategory) -> Bool {
        return lhs.id == rhs.id
    }
}
