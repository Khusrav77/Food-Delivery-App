//
//  ModelHelpers.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/28/24.
//

struct Price: Codable {
    let basePrice: Int
    let offerPrice: Int?
    let itemPrice: Int?
    let totalPrice: Int?
    
}

enum Unit: String, Codable {
    case grams = "g"
    case liters = "L"
    case pieces = "pcs"
}
