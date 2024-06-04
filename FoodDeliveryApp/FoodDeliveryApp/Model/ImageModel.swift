//
//  ImageModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ImageModel: Identifiable, Equatable {
    
    var id: Int
    var prodId: Int
    var image: String
    
    
    
    init(dictionary: NSDictionary) {
        self.id = dictionary.value(forKey: "img_id") as? Int ?? 0
        self.prodId = dictionary.value(forKey: "prod_id") as? Int ?? 0
        self.image = dictionary.value(forKey: "image_") as? String ?? ""
    }
    
    static func == (lhs: ImageModel, rhs: ImageModel) -> Bool {
        return lhs.id == rhs.id
    }
}
