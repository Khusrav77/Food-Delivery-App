//
//  TypeModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation
import SwiftUI

struct TypeModel: Identifiable, Equatable {
    
    var id: Int = 0
    var name: String = ""
    var image: String = ""
    var color: Color = Color.cardsColor
    
    init(dictionary: NSDictionary) {
        self.id = dictionary.value(forKey: "type_id") as? Int ?? 0
        self.name = dictionary.value(forKey: "name") as? String ?? ""
        self.image = dictionary.value(forKey: "image") as? String ?? ""
        self.color = Color(hex: dictionary.value(forKey: "color")as? String ?? "000000")
    }
    
    static func == (lhs: TypeModel, rhs: TypeModel) -> Bool {
        return lhs.id == rhs.id
    }
}
    

