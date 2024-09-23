//
//  ImageModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ImageModel: Identifiable, Equatable, Codable {
    var id: Int
    var prodId: Int
    var image: String
       
    static func == (lhs: ImageModel, rhs: ImageModel) -> Bool {
        return lhs.id == rhs.id
    }
}
