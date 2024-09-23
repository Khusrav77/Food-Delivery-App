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
    var quantityiInCart: Int
    var prodId: Int
    var catId: Int
    var brandId: Int
    var typeId: Int
    var brandName: String
    var detail: String
    var name: String
    var unitName: String
    var unitValue: String
    var nutritionWeight: String
    var image: String
    var catName: String
    var typeName: String
    var offerPrice: Double?
    var price: Int
    var startDate: Date = Date()
    var endDate: Date = Date()
    var itemPrice: Int?
    var totalPrice: Int?
    var isFav: Bool = false
       
    static func == (lhs: CartItem, rhs: CartItem) -> Bool {
            return lhs.id == rhs.id
        }
}

    


