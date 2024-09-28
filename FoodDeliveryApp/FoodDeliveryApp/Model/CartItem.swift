//
//  SwiftUIView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import Foundation



struct CartItem: Identifiable, Equatable, Codable {
    var id: UUID = UUID()
    var cartId: Int
    var userId: Int
    var prodId: Int
    var typeId: Int
    var typeName: String
    var brandId: Int
    var brandName: String
    var name: String
    var detail: String
    var unitName: Unit
    var unitValue: String
    var nutritionWeight: Nutrition?
    var quantityInCart: Int
    var image: String
    var price: Price
    var startDate: Date = Date()
    var endDate: Date = Date()
       
    static func == (lhs: CartItem, rhs: CartItem) -> Bool {
            return lhs.id == rhs.id
        }
}

    


