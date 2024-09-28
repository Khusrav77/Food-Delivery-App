//
//  ModelHelpers.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/28/24.
//

struct Price: Codable {
    var basePrice: Int
    var offerPrice: Int?
    var itemPrice: Int?
    var totalPrice: Int?
    
}

enum Unit: String, Codable {
    case grams = "g"
    case liters = "L"
    case pieces = "pcs"
}
