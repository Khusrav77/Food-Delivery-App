//
//  ImageModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ImageModel: Identifiable, Equatable, Codable {
    let id: Int
    let prodId: Int
    let image: String
       
    static func == (lhs: ImageModel, rhs: ImageModel) -> Bool {
        return lhs.id == rhs.id
    }
}
