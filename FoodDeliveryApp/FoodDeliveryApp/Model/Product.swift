//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation

struct ProductCategory: Identifiable, Codable {
    let id: Int
    let name: String
    let products: [Product]
}

struct Product: Identifiable, Equatable, Codable{
    let id: Int
    let prodId: Int
    let typeId: Int
    let typeName: String
    let brandId: Int?
    let brandName: String?
    let name: String
    let detail: String?
    let unitName: Unit
    let unitValue: String
    let nutritionWeight: Nutrition?
    let quantityInCart: Int
    let image: String?
    let price: Price
    var startDate: Date = Date()
    var endDate: Date = Date()
    let isFav: Bool
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
}




