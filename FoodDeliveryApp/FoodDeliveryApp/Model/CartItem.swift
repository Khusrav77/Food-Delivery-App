//
//  SwiftUIView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import Foundation



struct CartItem: Identifiable, Equatable, Codable {
    var id: UUID = UUID()
    let cartId: Int
    let userId: Int
    let prodId: Int
    let typeId: Int
    let typeName: String
    let brandId: Int
    let brandName: String
    let name: String
    let detail: String
    let unitName: Unit
    let unitValue: String
    let nutritionWeight: Nutrition?
    let quantityInCart: Int
    let image: String
    let price: Price
    var startDate: Date = Date()
    var endDate: Date = Date()
       
    static func == (lhs: CartItem, rhs: CartItem) -> Bool {
            return lhs.id == rhs.id
        }
}

    


