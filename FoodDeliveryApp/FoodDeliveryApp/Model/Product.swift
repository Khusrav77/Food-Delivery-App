//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation

struct ProductCategory: Identifiable, Codable {
    var id: Int
    var name: String
    var products: [Product]
}

struct Product: Identifiable, Equatable, Codable{
    var id: Int
    var prodId: Int?
    var typeId: Int
    var typeName: String
    var brandId: Int?
    var brandName: String?
    var name: String
    var detail: String?
    var unitName: String
    var unitValue: String
    var nutritionWeight: String?
    var quantityInCart: Int
    var image: String?
    var price: Int
    var offerPrice: Int?
    var itemPrice: Int?
    var totalPrice: Int?
    var startDate: Date = Date()
    var endDate: Date = Date()
    var isFav: Bool = false
        
    static func == (lhs: Product, rhs: Product) -> Bool {
            return lhs.id == rhs.id
        }
}

    


